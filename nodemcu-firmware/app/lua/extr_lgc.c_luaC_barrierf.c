
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_16__ {scalar_t__ gcstate; } ;
typedef TYPE_2__ global_State ;
struct TYPE_15__ {scalar_t__ tt; } ;
struct TYPE_17__ {TYPE_1__ gch; } ;
typedef TYPE_3__ GCObject ;


 TYPE_2__* G (int *) ;
 scalar_t__ GCSfinalize ;
 scalar_t__ GCSpause ;
 scalar_t__ GCSpropagate ;
 scalar_t__ LUA_TTABLE ;
 scalar_t__ isblack (TYPE_3__*) ;
 int isdead (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ iswhite (TYPE_3__*) ;
 int lua_assert (int) ;
 int makewhite (TYPE_2__*,TYPE_3__*) ;
 int reallymarkobject (TYPE_2__*,TYPE_3__*) ;

void luaC_barrierf (lua_State *L, GCObject *o, GCObject *v) {
  global_State *g = G(L);
  lua_assert(isblack(o) && iswhite(v) && !isdead(g, v) && !isdead(g, o));
  lua_assert(g->gcstate != GCSfinalize && g->gcstate != GCSpause);
  lua_assert(o->gch.tt != LUA_TTABLE);

  if (g->gcstate == GCSpropagate)
    reallymarkobject(g, v);
  else
    makewhite(g, o);
}
