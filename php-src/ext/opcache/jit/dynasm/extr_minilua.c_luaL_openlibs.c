
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int name; scalar_t__ func; } ;
typedef TYPE_1__ luaL_Reg ;


 int lua_call (int *,int,int ) ;
 int lua_pushcfunction (int *,scalar_t__) ;
 int lua_pushstring (int *,int ) ;
 TYPE_1__* lualibs ;

__attribute__((used)) static void luaL_openlibs(lua_State*L){
const luaL_Reg*lib=lualibs;
for(;lib->func;lib++){
lua_pushcfunction(L,lib->func);
lua_pushstring(L,lib->name);
lua_call(L,1,0);
}
}
