
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_getfield (int *,int,char const*) ;
 int lua_getglobal (int *,char*) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_remove (int *,int) ;
 int lua_setfield (int *,int,char const*) ;

__attribute__((used)) static void push_module_table(lua_State *L, const char *module)
{
    lua_getglobal(L, "package");
    lua_getfield(L, -1, "loaded");
    lua_remove(L, -2);
    lua_getfield(L, -1, module);
    if (lua_isnil(L, -1)) {
        lua_pop(L, 1);
        lua_newtable(L);
        lua_pushvalue(L, -1);
        lua_setfield(L, -3, module);
    }
    lua_remove(L, -2);
}
