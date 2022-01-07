
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* allgc; TYPE_2__* tobefnz; } ;
typedef TYPE_1__ global_State ;
struct TYPE_10__ {int marked; struct TYPE_10__* next; } ;
typedef TYPE_2__ GCObject ;


 int FINALIZEDBIT ;
 scalar_t__ issweepphase (TYPE_1__*) ;
 int lua_assert (int ) ;
 int makewhite (TYPE_1__*,TYPE_2__*) ;
 int resetbit (int ,int ) ;
 int tofinalize (TYPE_2__*) ;

__attribute__((used)) static GCObject *udata2finalize (global_State *g) {
  GCObject *o = g->tobefnz;
  lua_assert(tofinalize(o));
  g->tobefnz = o->next;
  o->next = g->allgc;
  g->allgc = o;
  resetbit(o->marked, FINALIZEDBIT);
  if (issweepphase(g))
    makewhite(g, o);
  return o;
}
