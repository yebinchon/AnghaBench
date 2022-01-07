
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Reg ;


 int luaI_openlib (int *,char const*,int const*,int ) ;

__attribute__((used)) static void luaL_register(lua_State*L,const char*libname,
const luaL_Reg*l){
luaI_openlib(L,libname,l,0);
}
