IncludeLib("SETTING")
IncludeLib("ITEM")
IncludeLib("FILESYS")
Include("\\script\\dialogsys\\dialogsay.lua")
Include("\\script\\dialogsys\\g_dialogsay.lua")

nGeoX = 0
nGeoY = 0

-- dialog enter x
function digalogEnterX(n)
    AskClientForNumber("setGeoX", 0, 2000, "Enter geo X")
end

-- dialog enter y
function digalogEnterY(n)
    AskClientForNumber("setGeoY", 0, 2000, "Enter geo Y")
end

-- set geo x
function setGeoX(n)
    nGeoX = n
    digalogEnterY()
end

-- set geo y
function setGeoY(n)
    nGeoY = n
    AskMoving(nGeoX, nGeoY)
end

-- tele
function AskMoving(x, y)
    -- get id map current
    local Dw, Dx, Dy = GetWorldPos()
    NewWorld(Dw, x*8, y*16)
end
