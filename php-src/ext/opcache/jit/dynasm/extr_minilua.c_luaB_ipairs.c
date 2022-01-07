
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checktype (int *,int,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static int luaB_ipairs(lua_State*L){
luaL_checktype(L,1,5);
lua_pushvalue(L,lua_upvalueindex(1));
lua_pushvalue(L,1);
lua_pushinteger(L,0);
return 3;
}
