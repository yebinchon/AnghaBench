
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_10__ {scalar_t__ gcstate; } ;
typedef TYPE_2__ global_State ;
struct TYPE_9__ {int marked; } ;
struct TYPE_11__ {TYPE_1__ gch; } ;
typedef TYPE_3__ GCObject ;


 TYPE_2__* G (int *) ;
 scalar_t__ GCSpropagate ;
 int luaC_white (TYPE_2__*) ;
 int reallymarkobject (TYPE_2__*,TYPE_3__*) ;

void luaC_marknew (lua_State *L, GCObject *o) {
  global_State *g = G(L);
  o->gch.marked = luaC_white(g);
  if (g->gcstate == GCSpropagate)
    reallymarkobject(g, o);
}
