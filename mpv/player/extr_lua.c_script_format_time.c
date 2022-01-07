
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 double luaL_checknumber (int *,int) ;
 int luaL_error (int *,char*,char const*) ;
 char* luaL_optstring (int *,int,char*) ;
 int lua_pushstring (int *,char*) ;
 char* mp_format_time_fmt (char const*,double) ;
 int talloc_free (char*) ;

__attribute__((used)) static int script_format_time(lua_State *L)
{
    double t = luaL_checknumber(L, 1);
    const char *fmt = luaL_optstring(L, 2, "%H:%M:%S");
    char *r = mp_format_time_fmt(fmt, t);
    if (!r)
        luaL_error(L, "Invalid time format string '%s'", fmt);
    lua_pushstring(L, r);
    talloc_free(r);
    return 1;
}
