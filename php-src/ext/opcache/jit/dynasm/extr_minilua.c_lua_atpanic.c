
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
typedef int lua_CFunction ;
struct TYPE_2__ {int panic; } ;


 TYPE_1__* G (int *) ;

__attribute__((used)) static lua_CFunction lua_atpanic(lua_State*L,lua_CFunction panicf){
lua_CFunction old;
old=G(L)->panic;
G(L)->panic=panicf;
return old;
}
