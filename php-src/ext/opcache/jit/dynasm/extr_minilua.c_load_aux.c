
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_insert (int *,int) ;
 int lua_pushnil (int *) ;

__attribute__((used)) static int load_aux(lua_State*L,int status){
if(status==0)
return 1;
else{
lua_pushnil(L);
lua_insert(L,-2);
return 2;
}
}
