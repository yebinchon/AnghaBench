
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_getfield (int *,int,char const*) ;
 int lua_isnil (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char const*) ;

__attribute__((used)) static int luaL_newmetatable(lua_State*L,const char*tname){
lua_getfield(L,(-10000),tname);
if(!lua_isnil(L,-1))
return 0;
lua_pop(L,1);
lua_newtable(L);
lua_pushvalue(L,-1);
lua_setfield(L,(-10000),tname);
return 1;
}
