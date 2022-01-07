
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ lvl; int buffer; int p; int * L; } ;
typedef TYPE_1__ luaL_Buffer ;



__attribute__((used)) static void luaL_buffinit(lua_State*L,luaL_Buffer*B){
B->L=L;
B->p=B->buffer;
B->lvl=0;
}
