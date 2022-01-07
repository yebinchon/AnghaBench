
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * StkId ;


 int * index2adr (int *,int) ;
 int luaO_nilobject_ ;
 int luaO_rawequalObj (int *,int *) ;

__attribute__((used)) static int lua_rawequal(lua_State*L,int index1,int index2){
StkId o1=index2adr(L,index1);
StkId o2=index2adr(L,index2);
return(o1==(&luaO_nilobject_)||o2==(&luaO_nilobject_))?0
:luaO_rawequalObj(o1,o2);
}
