util.keep_running()
util.require_natives(1663599433)
util.toast("Welcome! Thanks for using Snake Script!")


--Self Options Begin

local Self = menu.list(menu.my_root(),
"Self", {}, "Self Options")

menu.toggle(Self, "Godmode", {}, "", function ()
    menu.trigger_commands("Immortality")
end)

menu.toggle(Self, "No Ragdoll", {}, "", function ()
    menu.trigger_commands("grace")
end)

menu.toggle(Self, "Never Wanted", {}, "", function ()
    menu.trigger_commands("wanted")
    menu.trigger_commands("lockwantedlevel")   
end)

menu.toggle(Self, "No-Clip", {}, "WASD & Cam Movement, RSHIFT is Up, RCTRL is down",
function ()
    menu.trigger_commands("levitate")
    menu.trigger_commands("levitatespeed 2")
    menu.trigger_commands("nocollision")
    menu.trigger_commands("levitateassistup 0")
    menu.trigger_commands("levitateassistdown 0")
end)

menu.action(Self, "Heal", {}, "Give Yourself Full Health", function ()
   menu.trigger_commands("refillhealth") 
end)

menu.action(Self, "Suicide", {}, "Kill Yourself", function ()
    menu.trigger_commands("ewo")
end)

--Self Options End



--Weapon Options Begin

local Weapons = menu.list(menu.my_root(), "Weapons", {}, "Weapons Options")

local Modifiers = menu.list(Weapons, "Weapon Modifiers", {}, "")

menu.action(Weapons, "Give All Weapons", {}, "", function ()
    menu.trigger_commands("allguns")   
end)

menu.action(Weapons, "Remove All Weapons", {}, "", function ()
    menu.trigger_commands("noguns")    
end)

menu.toggle(Modifiers, "Infinite Ammo", {}, "", function ()
    menu.trigger_commands("bottomless")    
end)

menu.toggle(Modifiers, "Rapid Fire",  {}, "", function ()
    menu.trigger_commands("rapidfire")
end)

menu.toggle(Modifiers, "Explosive Ammo", {}, "Boom!", function ()
    menu.trigger_commands("explosivehits")
end)

--Weapon Options End



--Teleport Options Begin

local Teleports = menu.list(menu.my_root(),
"Teleports", {}, "Teleport Options")

--Quick Teleports
local Quick = menu.list(Teleports, "Quick Teleports", {}, "")

local tpOther = menu.list(Teleports, "Other Teleports", {}, "Random/Recommended Teleports")

local IPLS = menu.list(Teleports, "IPL Locations", {}, "")

menu.action(Quick, "LSIA", {}, "Los Santos International Airport", function ()
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
ENTITY.SET_ENTITY_COORDS(ourPlayer, -1067, -2915, 14, false, false, false, false)
end)

menu.action(Quick, "Maze Bank Top", {}, "Maze Bank Tower Roof", function ()
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
ENTITY.SET_ENTITY_COORDS(ourPlayer, -76, -819, 326, false, false, false, false)
end)

menu.action(Quick, "Beach", {}, "Del Perro Beach", function ()
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
ENTITY.SET_ENTITY_COORDS(ourPlayer, -1472, -1314, 3, false, false, false, false)  
end)

menu.action(Quick, "Mount Chiliad", {}, "Top of Mt. Chiliad", function ()
    local ourPLAYER = PLAYER.GET_PLAYER_PED(players.user())
    ENTITY.SET_ENTITY_COORDS(ourPLAYER, 501, 5604, 798, false, false, false, false)  
end)

menu.action(Quick, "Fort Zancudo", {}, "Fort Zancudo", function ()
    local ourPLAYER = PLAYER.GET_PLAYER_PED(players.user())
    ENTITY.SET_ENTITY_COORDS(ourPLAYER, -2147, 3231, 32, false, false, false, false)   
end)

menu.action(tpOther, "Mount Gordo Ghost", {}, "Spooky!", function ()
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    ENTITY.SET_ENTITY_COORDS(ourPlayer, 3077, 5595, 203, false, false, false, false)
end)

menu.toggle(IPLS, "North Yankton", {}, "Fly to North Yankton!", function ()
    menu.trigger_commands("yank")
    menu.trigger_commands("yankmap")
end)

menu.toggle(IPLS, "Clucking Bell Factory", {}, "Chicken", function ()
    menu.trigger_commands("cluckingbellfactory")
end)

menu.toggle(IPLS, "Fame or Shame", {}, "", function ()
    menu.trigger_commands("fameorshame")
end)
 
menu.toggle(IPLS, "Morgue", {}, "", function ()
    menu.trigger_commands("morgue")
end)

menu.toggle(IPLS, "Hospital", {}, "", function ()
    menu.trigger_commands("hospital")
end)

menu.toggle(IPLS, "Methhead Ranch", {}, "", function ()
    menu.trigger_commands("ranch")
end)

menu.toggle(IPLS, "Methhead Ranch on Fire", {}, "", function ()
    menu.trigger_commands("ranchfire")
end)

menu.toggle(IPLS, "Lester's Garment Factory", {}, "", function ()
    menu.trigger_commands("lestersfactory")
end)

menu.toggle(IPLS, "Life Invader", {}, "AKA Facebook", function ()
    menu.trigger_commands("lifeinvader")
end)

menu.toggle(IPLS, "Vangelico Jewelers", {}, "", function ()
    menu.trigger_commands("vangelicofinejewelry")
end)

menu.toggle(IPLS, "Train Crash", {}, "", function ()
    menu.trigger_commands("trainwreck")
end)

menu.toggle(IPLS, "FIB Lobby", {}, "", function ()
    menu.trigger_commands("fiblobby")
end)

menu.toggle(IPLS, "FIB Helicopter Crash", {}, "", function ()
    menu.trigger_commands("fibhelicoptercrash")
end)

menu.toggle(IPLS, "FIB Rubble", {}, "", function ()
    menu.trigger_commands("fibrubble")
end)

menu.toggle(IPLS, "Union Depository", {}, "", function ()
    menu.trigger_commands("uniondepository")
end)

menu.toggle(IPLS, "Plane Crash", {}, "", function ()
    menu.trigger_commands("planecrashtrench")
end)

menu.action(Quick, "Sandy Shores Airstrip", {}, "", function ()
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    ENTITY.SET_ENTITY_COORDS(ourPlayer, 1723, 3260, 41, false, false, false, false)
end)

menu.action(Quick, "McKenzie Airstrip", {}, "", function ()
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    ENTITY.SET_ENTITY_COORDS(ourPlayer, 2128, 4796, 41, false, false, false, false)
end)

menu.action(tpOther, "why the hell not", {}, "-grim", function ()
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    ENTITY.SET_ENTITY_COORDS(ourPlayer, 4906, -2018, -1, false, false, false, false)
end)

--Teleport Options End



--Vehicle Options Begin

local Vehicles = menu.list(menu.my_root(), "Vehicles", {}, "Vehicle Options")

local Spawn = menu.list(Vehicles, "Spawn", {},
"Spawn Vehicles (May Cause Other Modders to Spaz)")

menu.toggle(Vehicles, "Vehicle Godmode", {}, "Make Your Vehicle Indestructible", function ()
    menu.trigger_commands("vehgodmode")   
end )

menu.toggle(Vehicles, "Auto Repair", {}, "", function ()
    menu.trigger_commands("mint")
end)

menu.action(Vehicles, "Upgrade Vehicle", {}, "Max Upgrade Your Vehicle", function ()
    menu.trigger_commands("tune")   
end)

menu.action(Vehicles, "Repair", {}, "Repair Your Vehicle", function ()
    menu.trigger_commands("fixvehicle")   
end)

menu.action(Spawn, "Double-Decker Bus", {}, "Works on 2nd Click lol sorry", function ()
    menu.trigger_commands("spawn bus")
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local vehPlayer = PED.GET_VEHICLE_PED_IS_IN(ourPlayer, false)
    local Bus = OBJECT.CREATE_OBJECT(3581397346, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Bus, vehPlayer, 0, 0, 0, 2.8,
    0, 0, 0, true, true, false, true, 0, true, 2)
end)

menu.action(Spawn, "Extra Long Bus", {}, "Works on 2nd Click lol sorry", function ()
    menu.trigger_commands("spawn bus")
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local vehPlayer = PED.GET_VEHICLE_PED_IS_IN(ourPlayer, false)
    local Bus = OBJECT.CREATE_OBJECT(3581397346, 1000, 1000, 1000, true, true, true)
    local Bus1 = OBJECT.CREATE_OBJECT(3581397346, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Bus, vehPlayer, 0, 0, 12, 0,
    0, 0, 0, true, true, false, true, 0, true, 2)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Bus1, vehPlayer, 0, 0, -12, 0,
    0, 0, 0, true, true, false, true, 0, true, 2)
end)

menu.action(Spawn, "UFO", {}, "Works on 2nd Click lol sorry", function ()
    menu.trigger_commands("spawn havok")
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local vehPlayer = PED.GET_VEHICLE_PED_IS_IN(ourPlayer, false)
    local UFO = OBJECT.CREATE_OBJECT(1241740398, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(UFO, vehPlayer, 0, 0, 0, 0,
    0, 0, 0, true, true, false, true, 0, true, 2)
end)

menu.action(Spawn, "Trash", {}, "Works on 2nd Click lol sorry", function ()
    menu.trigger_commands("spawn rcbandito")
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local vehPlayer = PED.GET_VEHICLE_PED_IS_IN(ourPlayer, false)
    local Trash = OBJECT.CREATE_OBJECT(-413198204, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Trash, vehPlayer, 0, 0, 0, 0,
    0, 0, 0, true, true, false, true, 0, true, 2)
end)

menu.action(Spawn, "Wheelchair", {}, "Works on 2nd Click lol sorry", function ()
    menu.trigger_commands("spawn rcbandito")
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local vehPlayer = PED.GET_VEHICLE_PED_IS_IN(ourPlayer, false)
    local Wheelchair = OBJECT.CREATE_OBJECT(1262298127, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Wheelchair, vehPlayer, 0, 0, 0, 0.5,
    0, 0, 180, true, true, false, true, 0, true, 2)
end)

menu.action(Spawn, "Land Boat", {}, "Works on 2nd Click lol sorry", function ()
    menu.trigger_commands("spawn shotaro")
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local vehPlayer = PED.GET_VEHICLE_PED_IS_IN(ourPlayer, false)
    local Boat = OBJECT.CREATE_OBJECT(122468881, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Boat, vehPlayer, 0, 0, 0, 0,
    0, 0, 0, true, true, false, true, 0, true, 2)
end)

menu.action(Spawn, "Land Yacht", {}, "Works on 2nd Click lol sorry", function ()
    menu.trigger_commands("spawn voltic")
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local vehPlayer = PED.GET_VEHICLE_PED_IS_IN(ourPlayer, false)
    local Yacht = OBJECT.CREATE_OBJECT(1338692320, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Yacht, vehPlayer, 0, 0, 0, 7.5,
    0, 0, 90, true, true, false, true, 0, true, 2)
end)

menu.action(Spawn, "Monster Bus", {}, "Works on 2nd Click lol sorry", function ()
    menu.trigger_commands("spawn marshall")
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local vehPlayer = PED.GET_VEHICLE_PED_IS_IN(ourPlayer, false)
    local Bus = OBJECT.CREATE_OBJECT(2287941233, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Bus, vehPlayer, 0, 0, 0.2, 1,
    0, 0, 0, true, true, false, true, 0, true, 2)
end)

menu.action(Spawn, "Dick", {}, "Works on 2nd Click lol sorry", function ()
    menu.trigger_commands("spawn faggio")
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local vehPlayer = PED.GET_VEHICLE_PED_IS_IN(ourPlayer, false)
    local Balls = OBJECT.CREATE_OBJECT(1399999408, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Balls, vehPlayer, 0, 3.2, 0, 2.5,
    0, 0, 0, true, true, false, true, 0, true, 2)
    local Balls1 = OBJECT.CREATE_OBJECT(1399999408, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Balls1, vehPlayer, 0, -3.2, 0, 2.5,
    0, 0, 0, true, true, false, true, 0, true, 2)
    local Balls2 = OBJECT.CREATE_OBJECT(1399999408, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Balls2, vehPlayer, 0, 0, 0, 6,
    0, 0, 0, true, true, false, true, 0, true, 2)
    local Balls3 = OBJECT.CREATE_OBJECT(1399999408, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Balls3, vehPlayer, 0, 0, 0, 11,
    0, 0, 0, true, true, false, true, 0, true, 2)
    local Balls4 = OBJECT.CREATE_OBJECT(1399999408, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Balls4, vehPlayer, 0, 0, 0, 16,
    0, 0, 0, true, true, false, true, 0, true, 2)
    local Balls5 = OBJECT.CREATE_OBJECT(1399999408, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Balls5, vehPlayer, 0, 0, 0, 21,
    0, 0, 0, true, true, false, true, 0, true, 2)
end)

menu.action(Spawn, "Shit Plane", {}, "Works on 2nd Click lol sorry", function ()
    menu.trigger_commands("spawn rcbandito")
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local vehPlayer = PED.GET_VEHICLE_PED_IS_IN(ourPlayer, false)
    local Plane = OBJECT.CREATE_OBJECT(1925170211, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Plane, vehPlayer, 0, 0, 0, 1,
    0, 0, 0, true, true, false, true, 0, true, 2)
end)

menu.action(Vehicles, "Invisible", {}, "Enable Vehicle Invisibility", function ()
    menu.trigger_commands("vehinvisibility on")
end)

menu.action(Vehicles, "Visible", {}, "Enable Vehicle Visibility", function ()
    menu.trigger_commands("vehinvisibility off")
end)

--Vehicle Options End



--World Options Begin

local World = menu.list(menu.my_root(),
"World", {}, "World/Atmosphere Options")

local Weather = menu.list(World, "Weather Options", {}, "Change the Weather (Local)")

local Time = menu.list(World, "Set Time", {}, "Control Game Time (Local)")

menu.action(Weather, "Clear", {}, "Make It Clear!", function ()  
    menu.trigger_commands("weather clear")
end)

menu.action(Weather, "Rain", {}, "Make It Rain!", function () 
    menu.trigger_commands("weather rain")
end)

menu.action(Weather, "Light Snow", {}, "Make it Snow!", function () 
    menu.trigger_commands("weather snowlight")
end)

menu.action(Weather, "Snow", {}, "Merry Christmas!", function ()  
    menu.trigger_commands("weather xmas")
end)

menu.action(Time, "Day", {}, "Sunny!", function ()
    menu.trigger_commands("timesmoothing off")
    menu.trigger_commands("time 12")
end)

menu.action(Time, "Night", {}, "Not Sunny!", function ()
    menu.trigger_commands("timesmoothing off")
    menu.trigger_commands("time 0")
end)

--World Options End



--Players Options Begin

local Players = menu.list(menu.my_root(),
"Players", {}, "Player Options")

--menu.divider(menu.player_root(0), "SnakeScript")
--local PlayOp = menu.list(menu.player_root(0), "SnakeScript", {"SnakeScript"}, "")

menu.action(Players, "Kick All", {}, "Be an Asshole", function ()   
    menu.trigger_commands("kickall")
end)

menu.action(Players, "Crash All", {}, "Be a Bigger Asshole", function ()
    menu.trigger_commands("crashall")    
end)


--Players Options End



--Session Options Begin

local Session = menu.list(menu.my_root(),
"Session", {}, "Session Options")

local Trolling = menu.list(Session, "Trolling", {}, "Session Trolling Options")

menu.action(Trolling, "Launch Nuke", {}, "Explode All", function ()
    CAM.SHAKE_GAMEPLAY_CAM("MEDIUM_EXPLOSION_SHAKE", 8)
    menu.trigger_commands("explodeall")   
end)

menu.action(Trolling, "Nuke the Casino", {}, "Nobody likes Casino kids", function ()
    FIRE.ADD_EXPLOSION(927, 70, 80, "29", 100, true, false,
    2, false)
    FIRE.ADD_EXPLOSION(923, 61, 80, "29", 100, true, false,
    2, false)
    FIRE.ADD_EXPLOSION(918, 52, 80, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(913, 41, 80, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(907, 33, 80, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(896, 15, 80, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(888, 3, 80, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(903, -10, 78, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(875, 6, 78, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(873, 24, 78, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(886, 37, 78, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(900, 54, 79, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(914, 70, 79, "29", 100, true, false,
    5, false)
    FIRE.ADD_EXPLOSION(931, 84, 78, "29", 100, true, false,
    5, false)
end)

menu.action(Trolling, "Dipshit Zoo", {}, "Cage All Players", function ()
    menu.trigger_commands("cageall")
end)

--Session Options End



--Recovery Options Begin

local Recovery = menu.list(menu.my_root(), "Recovery", {}, "Recovery Options")

local StoryRec = menu.list(Recovery, "Story Mode Recovery", {}, "")

menu.action(StoryRec, "Max Singleplayer Cash", {}, "", function ()
    menu.trigger_commands("spcashfranklin 2147483647")
    menu.trigger_commands("spcashmichael 2147483647")
    menu.trigger_commands("spcashtrevor 2147483647")
end)

menu.action(StoryRec, "Skip Prologue", {}, "", function ()
    menu.trigger_commands("skipprologue")
end)

menu.action(StoryRec, "Reveal Map", {}, "", function ()
    menu.trigger_commands("revealmap")
end)

local OnlineRec = menu.list(Recovery, "Online Recovery", {}, "RISKY")

menu.toggle(OnlineRec, "Rig Blackjack", {}, "Nick The Greek", function ()
    menu.trigger_commands("rigblackjack")
end)

--Recovery Options End



--Game Options Begin

local Game = menu.list(menu.my_root(),
"Game", {}, "Local Game Options")

menu.action(Game, "Bail to Story Mode", {}, "Save Yourself", function ()
    menu.trigger_commands("forcequittosp")
end)

menu.toggle(Game, "Crash Protection Camera", {}, "Like a 2nd Condom", function ()
    menu.trigger_commands("anticrashcamera")
end)

menu.action(Game, "Go Out With a Bang", {}, "You'll see ;)", function ()
    menu.trigger_commands("explodeall")
    menu.trigger_commands("YEET")
end)

--Game Options End



--Misc Options Begin

local Miscellaneous = menu.list(menu.my_root(),
"Miscellaneous", {}, "Miscellaneous Options")

local Disables = menu.list(Miscellaneous, "Disables", {}, "Disable Features")

menu.action(Miscellaneous, "9/11", {}, "(Based on Where You're Looking)", function ()
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    ENTITY.SET_ENTITY_COORDS(ourPlayer, 102, -1035, 237, false, false, false, false)
    menu.trigger_commands("spawn luxor")
end)

menu.action(Miscellaneous, "Frosty", {}, "Become Frosty the Snowman!", function ()
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local Snowman = OBJECT.CREATE_OBJECT(-1617412079, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Snowman, ourPlayer, 0, 0, 0, 0,
    0, 0, 0, true, true, false, true, 0, true, 2)    
end)

menu.action(Miscellaneous, "Attract a Woman", {}, "Sexism is Good", function ()
    local ourPlayer = PLAYER.GET_PLAYER_PED(players.user())
    local Kitchen = OBJECT.CREATE_OBJECT(-543697509, 1000, 1000, 1000, true, true, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(Kitchen, ourPlayer, 0, 0, 0, 0,
    0, 0, 0, true, true, false, true, 0, true, 2)    
end)

menu.action(Miscellaneous, "Force Remove Attachments", {},
    "(Will Kill You and Break Your Character)", function ()
    menu.trigger_commands("Franklin")
    menu.trigger_commands("Suicide")
end)

menu.toggle(Disables, "No EWO Cooldown", {}, "", function ()
    menu.trigger_commands("noewocooldown")
end)

menu.toggle(Disables, "No Orbital Cooldown", {}, "", function ()
    menu.trigger_commands("noorbcooldown")
end)

menu.toggle(Disables, "Anti-AFK", {}, "", function ()
    menu.trigger_commands("noidlekick")
end)

menu.toggle(Disables, "Do Not Disturb", {}, "Disables Phones Calls", function ()
    menu.trigger_commands("nophonespam")
end)

--Misc Options End



--DirectX Begin

--DirectX End

