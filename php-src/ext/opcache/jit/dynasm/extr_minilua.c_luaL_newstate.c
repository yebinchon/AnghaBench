
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int l_alloc ;
 int lua_atpanic (int *,int *) ;
 int * lua_newstate (int ,int *) ;
 int panic ;

__attribute__((used)) static lua_State*luaL_newstate(void){
lua_State*L=lua_newstate(l_alloc,((void*)0));
if(L)lua_atpanic(L,&panic);
return L;
}
