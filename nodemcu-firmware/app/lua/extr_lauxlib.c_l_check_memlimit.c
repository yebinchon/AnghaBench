
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ lu_mem ;
struct TYPE_3__ {size_t memlimit; scalar_t__ totalbytes; scalar_t__ gcstate; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 scalar_t__ GCSpause ;
 int is_block_gc (int *) ;
 int luaC_step (int *) ;

__attribute__((used)) static int l_check_memlimit(lua_State *L, size_t needbytes) {
  global_State *g = G(L);
  int cycle_count = 0;
  lu_mem limit = g->memlimit - needbytes;

  if (needbytes > g->memlimit) return 1;

  if (!is_block_gc(L)) {
    while (g->totalbytes >= limit) {

      if (g->gcstate == GCSpause && ++cycle_count > 1) break;
      luaC_step(L);
    }
  }
  return (g->totalbytes >= limit) ? 1 : 0;
}
