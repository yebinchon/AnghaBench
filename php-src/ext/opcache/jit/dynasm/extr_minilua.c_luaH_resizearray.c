
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int * node; } ;
typedef TYPE_1__ Table ;


 int dummynode_ ;
 int resize (int *,TYPE_1__*,int,int) ;
 int sizenode (TYPE_1__*) ;

__attribute__((used)) static void luaH_resizearray(lua_State*L,Table*t,int nasize){
int nsize=(t->node==(&dummynode_))?0:sizenode(t);
resize(L,t,nasize,nsize);
}
