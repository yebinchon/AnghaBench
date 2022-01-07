
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_getmetatable (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_rawget (int *,int) ;
 int lua_remove (int *,int) ;

__attribute__((used)) static int luaL_getmetafield(lua_State*L,int obj,const char*event){
if(!lua_getmetatable(L,obj))
return 0;
lua_pushstring(L,event);
lua_rawget(L,-2);
if(lua_isnil(L,-1)){
lua_pop(L,2);
return 0;
}
else{
lua_remove(L,-2);
return 1;
}
}
