
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MSGL_MAX ;
 int abort () ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*) ;
 scalar_t__* mp_log_levels ;
 scalar_t__ strcasecmp (scalar_t__,char const*) ;

__attribute__((used)) static int check_loglevel(lua_State *L, int arg)
{
    const char *level = luaL_checkstring(L, arg);
    for (int n = 0; n < MSGL_MAX; n++) {
        if (mp_log_levels[n] && strcasecmp(mp_log_levels[n], level) == 0)
            return n;
    }
    luaL_error(L, "Invalid log level '%s'", level);
    abort();
}
