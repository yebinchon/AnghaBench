
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int gcstate; } ;
typedef TYPE_1__ global_State ;
typedef int GCObject ;


 TYPE_1__* G (int *) ;
 int makewhite (TYPE_1__*,int *) ;
 int reallymarkobject (TYPE_1__*,int *) ;

__attribute__((used)) static void luaC_barrierf(lua_State*L,GCObject*o,GCObject*v){
global_State*g=G(L);
if(g->gcstate==1)
reallymarkobject(g,v);
else
makewhite(g,o);
}
