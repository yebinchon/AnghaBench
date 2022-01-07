
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_9__ {TYPE_1__* mainthread; } ;


 TYPE_6__* G (TYPE_1__*) ;
 int api_incr_top (TYPE_1__*) ;
 int setthvalue (TYPE_1__*,int ,TYPE_1__*) ;

__attribute__((used)) static int lua_pushthread(lua_State*L){
setthvalue(L,L->top,L);
api_incr_top(L);
return(G(L)->mainthread==L);
}
