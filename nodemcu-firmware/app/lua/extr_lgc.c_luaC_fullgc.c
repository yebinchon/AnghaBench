
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ gcstate; int * weak; int * grayagain; int * gray; int rootgc; int * sweepgc; scalar_t__ sweepstrgc; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 scalar_t__ GCSfinalize ;
 scalar_t__ GCSpause ;
 scalar_t__ GCSpropagate ;
 scalar_t__ GCSsweep ;
 scalar_t__ GCSsweepstring ;
 scalar_t__ is_block_gc (int *) ;
 int lua_assert (int) ;
 int markroot (int *) ;
 int set_block_gc (int *) ;
 int setthreshold (TYPE_1__*) ;
 int singlestep (int *) ;
 int unset_block_gc (int *) ;

void luaC_fullgc (lua_State *L) {
  global_State *g = G(L);
  if(is_block_gc(L)) return;
  set_block_gc(L);
  if (g->gcstate <= GCSpropagate) {

    g->sweepstrgc = 0;
    g->sweepgc = &g->rootgc;

    g->gray = ((void*)0);
    g->grayagain = ((void*)0);
    g->weak = ((void*)0);
    g->gcstate = GCSsweepstring;
  }
  lua_assert(g->gcstate != GCSpause && g->gcstate != GCSpropagate);

  while (g->gcstate != GCSfinalize) {
    lua_assert(g->gcstate == GCSsweepstring || g->gcstate == GCSsweep);
    singlestep(L);
  }
  markroot(L);
  while (g->gcstate != GCSpause) {
    singlestep(L);
  }
  setthreshold(g);
  unset_block_gc(L);
}
