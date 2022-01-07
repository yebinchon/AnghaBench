
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int destroy_crap ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 void** lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 void* talloc_new (int *) ;

__attribute__((used)) static void *mp_lua_PITA(lua_State *L)
{
    void **data = lua_newuserdata(L, sizeof(void *));
    if (luaL_newmetatable(L, "ohthispain")) {
        lua_pushvalue(L, -1);
        lua_setfield(L, -2, "__index");
        lua_pushcfunction(L, destroy_crap);
        lua_setfield(L, -2, "__gc");
    }
    lua_setmetatable(L, -2);
    *data = talloc_new(((void*)0));
    return *data;
}
