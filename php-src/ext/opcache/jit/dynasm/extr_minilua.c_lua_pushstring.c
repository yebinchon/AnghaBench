
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushlstring (int *,char const*,int ) ;
 int lua_pushnil (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void lua_pushstring(lua_State*L,const char*s){
if(s==((void*)0))
lua_pushnil(L);
else
lua_pushlstring(L,s,strlen(s));
}
