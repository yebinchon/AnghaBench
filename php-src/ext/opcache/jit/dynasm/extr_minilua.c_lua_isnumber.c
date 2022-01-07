
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TValue ;


 int * index2adr (int *,int) ;
 int tonumber (int const*,int *) ;

__attribute__((used)) static int lua_isnumber(lua_State*L,int idx){
TValue n;
const TValue*o=index2adr(L,idx);
return tonumber(o,&n);
}
