
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 scalar_t__ lua_isboolean (int *,int) ;
 int lua_newtable (int *) ;
 int lua_newuserdata (int *,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int ) ;
 int lua_rawset (int *,int ) ;
 int lua_setmetatable (int *,int) ;
 int lua_settop (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static int luaB_newproxy(lua_State*L){
lua_settop(L,1);
lua_newuserdata(L,0);
if(lua_toboolean(L,1)==0)
return 1;
else if(lua_isboolean(L,1)){
lua_newtable(L);
lua_pushvalue(L,-1);
lua_pushboolean(L,1);
lua_rawset(L,lua_upvalueindex(1));
}
else{
int validproxy=0;
if(lua_getmetatable(L,1)){
lua_rawget(L,lua_upvalueindex(1));
validproxy=lua_toboolean(L,-1);
lua_pop(L,1);
}
luaL_argcheck(L,validproxy,1,"boolean or proxy expected");
lua_getmetatable(L,1);
}
lua_setmetatable(L,2);
return 1;
}
