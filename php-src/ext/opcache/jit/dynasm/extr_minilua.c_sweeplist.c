
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
struct TYPE_14__ {TYPE_3__* rootgc; } ;
typedef TYPE_2__ global_State ;
struct TYPE_16__ {int openupval; } ;
struct TYPE_13__ {int tt; int marked; TYPE_3__* next; } ;
struct TYPE_15__ {TYPE_1__ gch; } ;
typedef TYPE_3__ GCObject ;


 TYPE_2__* G (int *) ;
 int bit2mask (int ,int) ;
 int freeobj (int *,TYPE_3__*) ;
 TYPE_9__* gco2th (TYPE_3__*) ;
 int makewhite (TYPE_2__*,TYPE_3__*) ;
 int otherwhite (TYPE_2__*) ;
 int sweepwholelist (int *,int *) ;

__attribute__((used)) static GCObject**sweeplist(lua_State*L,GCObject**p,lu_mem count){
GCObject*curr;
global_State*g=G(L);
int deadmask=otherwhite(g);
while((curr=*p)!=((void*)0)&&count-->0){
if(curr->gch.tt==8)
sweepwholelist(L,&gco2th(curr)->openupval);
if((curr->gch.marked^bit2mask(0,1))&deadmask){
makewhite(g,curr);
p=&curr->gch.next;
}
else{
*p=curr->gch.next;
if(curr==g->rootgc)
g->rootgc=curr->gch.next;
freeobj(L,curr);
}
}
return p;
}
