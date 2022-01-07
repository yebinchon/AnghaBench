
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ gcstate; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 scalar_t__ GCSsweepstring ;
 int sweepstrstep (TYPE_1__*,int *) ;

int luaC_sweepstrgc (lua_State *L) {
  global_State *g = G(L);
  if (g->gcstate == GCSsweepstring) {
    sweepstrstep(g, L);
    return (g->gcstate == GCSsweepstring) ? 1 : 0;
  }
  return 0;
}
