
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int flib ;
 int luaL_newmetatable (int *,char*) ;
 int luaL_register (int *,int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;

__attribute__((used)) static void createmeta(lua_State*L){
luaL_newmetatable(L,"FILE*");
lua_pushvalue(L,-1);
lua_setfield(L,-2,"__index");
luaL_register(L,((void*)0),flib);
}
