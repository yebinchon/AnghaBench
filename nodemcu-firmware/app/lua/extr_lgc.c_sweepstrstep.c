
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ lu_mem ;
struct TYPE_4__ {scalar_t__ size; int * hash; } ;
struct TYPE_5__ {scalar_t__ totalbytes; scalar_t__ sweepstrgc; int estimate; int gcstate; TYPE_1__ strt; } ;
typedef TYPE_2__ global_State ;


 int GCSsweep ;
 int lua_assert (int) ;
 int sweepwholelist (int *,int *) ;

__attribute__((used)) static void sweepstrstep (global_State *g, lua_State *L) {
  lu_mem old = g->totalbytes;
  sweepwholelist(L, &g->strt.hash[g->sweepstrgc++]);
  if (g->sweepstrgc >= g->strt.size)
    g->gcstate = GCSsweep;
  lua_assert(old >= g->totalbytes);
  g->estimate -= old - g->totalbytes;
}
