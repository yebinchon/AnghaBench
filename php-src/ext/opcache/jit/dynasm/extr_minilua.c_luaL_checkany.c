
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_argerror (int *,int,char*) ;
 int lua_type (int *,int) ;

__attribute__((used)) static void luaL_checkany(lua_State*L,int narg){
if(lua_type(L,narg)==(-1))
luaL_argerror(L,narg,"value expected");
}
