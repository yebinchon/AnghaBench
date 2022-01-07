
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int dispname ;


 char*** builtin_lua_scripts ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*) ;
 scalar_t__ luaL_loadbuffer (int *,char const*,int ,char*) ;
 int lua_call (int *,int ,int) ;
 int lua_error (int *) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int load_builtin(lua_State *L)
{
    const char *name = luaL_checkstring(L, 1);
    char dispname[80];
    snprintf(dispname, sizeof(dispname), "@%s", name);
    for (int n = 0; builtin_lua_scripts[n][0]; n++) {
        if (strcmp(name, builtin_lua_scripts[n][0]) == 0) {
            const char *script = builtin_lua_scripts[n][1];
            if (luaL_loadbuffer(L, script, strlen(script), dispname))
                lua_error(L);
            lua_call(L, 0, 1);
            return 1;
        }
    }
    luaL_error(L, "builtin module '%s' not found\n", name);
    return 0;
}
