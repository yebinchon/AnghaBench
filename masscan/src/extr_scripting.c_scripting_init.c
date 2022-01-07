
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lua_State {int dummy; } ;
struct TYPE_2__ {char* name; struct lua_State* L; } ;
struct Masscan {TYPE_1__ scripting; } ;


 int LOG (int,char*,...) ;
 int LUA_OK ;
 int exit (int) ;
 int luaL_loadfile (struct lua_State*,char const*) ;
 struct lua_State* luaL_newstate () ;
 int luaL_openlibs (struct lua_State*) ;
 int lua_close (struct lua_State*) ;
 int lua_pcall (struct lua_State*,int ,int ,int ) ;
 int lua_tostring (struct lua_State*,int) ;
 scalar_t__* lua_version (int ) ;
 int scripting_masscan_init (struct Masscan*) ;
 int stublua_init () ;

void
scripting_init(struct Masscan *masscan)
{
    int version;
    struct lua_State *L;
    const char *filename = masscan->scripting.name;
    int x;


    if (filename == 0 || filename[0] == '\0') {
        LOG(0, "%s: no script specified, use --script option\n", "SCRIPTING");
        exit(1);
    }


    stublua_init();


    version = (int)*lua_version(0);
    LOG(1, "Lua version = %d\n", version);
    if (version != 503 && version != 502) {
        LOG(0, "Unable to load Lua library\n");
        exit(1);
    }




    L = luaL_newstate();
    luaL_openlibs(L);
    masscan->scripting.L = L;
    scripting_masscan_init(masscan);




    x = luaL_loadfile(L, filename);
    if (x != LUA_OK) {
        LOG(0, "%s error loading: %s: %s\n", "SCRIPTING:", filename, lua_tostring(L, -1));
        lua_close(L);
        exit(1);
    }





    LOG(1, "%s running script: %s\n", "SCRIPTING:", filename);
    x = lua_pcall(L, 0, 0, 0);
    if (x != LUA_OK) {
        LOG(0, "%s error running: %s: %s\n", "SCRIPTING:", filename, lua_tostring(L, -1));
        lua_close(L);
        exit(1);
    }

}
