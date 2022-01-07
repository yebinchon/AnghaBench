
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int lua_pushstring (int *,char*) ;
 char* mp_path_join (int *,char const*,char const*) ;
 int talloc_free (char*) ;

__attribute__((used)) static int script_join_path(lua_State *L)
{
    const char *p1 = luaL_checkstring(L, 1);
    const char *p2 = luaL_checkstring(L, 2);
    char *r = mp_path_join(((void*)0), p1, p2);
    lua_pushstring(L, r);
    talloc_free(r);
    return 1;
}
