
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int * openupval; } ;
typedef TYPE_2__ lua_State ;
typedef int global_State ;
struct TYPE_14__ {int value; } ;
struct TYPE_16__ {scalar_t__ v; TYPE_1__ u; int * next; } ;
typedef TYPE_3__ UpVal ;
typedef scalar_t__ StkId ;
typedef int GCObject ;


 int * G (TYPE_2__*) ;
 scalar_t__ isdead (int *,int *) ;
 int luaC_linkupval (TYPE_2__*,TYPE_3__*) ;
 int luaF_freeupval (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* ngcotouv (int *) ;
 int * obj2gco (TYPE_3__*) ;
 int setobj (TYPE_2__*,int *,scalar_t__) ;
 int unlinkupval (TYPE_3__*) ;

__attribute__((used)) static void luaF_close(lua_State*L,StkId level){
UpVal*uv;
global_State*g=G(L);
while(L->openupval!=((void*)0)&&(uv=ngcotouv(L->openupval))->v>=level){
GCObject*o=obj2gco(uv);
L->openupval=uv->next;
if(isdead(g,o))
luaF_freeupval(L,uv);
else{
unlinkupval(uv);
setobj(L,&uv->u.value,uv->v);
uv->v=&uv->u.value;
luaC_linkupval(L,uv);
}
}
}
