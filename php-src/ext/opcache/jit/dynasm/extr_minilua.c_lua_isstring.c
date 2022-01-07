
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_type (int *,int) ;

__attribute__((used)) static int lua_isstring(lua_State*L,int idx){
int t=lua_type(L,idx);
return(t==4||t==3);
}
