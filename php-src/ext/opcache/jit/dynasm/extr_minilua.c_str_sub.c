
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char const*,int) ;
 int posrelat (int ,size_t) ;

__attribute__((used)) static int str_sub(lua_State*L){
size_t l;
const char*s=luaL_checklstring(L,1,&l);
ptrdiff_t start=posrelat(luaL_checkinteger(L,2),l);
ptrdiff_t end=posrelat(luaL_optinteger(L,3,-1),l);
if(start<1)start=1;
if(end>(ptrdiff_t)l)end=(ptrdiff_t)l;
if(start<=end)
lua_pushlstring(L,s+start-1,end-start+1);
else lua_pushliteral(L,"");
return 1;
}
