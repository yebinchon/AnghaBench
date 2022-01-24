#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lu_mem ;
struct TYPE_3__ {size_t memlimit; scalar_t__ totalbytes; scalar_t__ gcstate; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GCSpause ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(lua_State *L, size_t needbytes) {
  global_State *g = FUNC0(L);
  int cycle_count = 0;
  lu_mem limit = g->memlimit - needbytes;
  /* don't allow allocation if it requires more memory then the total limit. */
  if (needbytes > g->memlimit) return 1;
  /* make sure the GC is not disabled. */
  if (!FUNC1(L)) {
    while (g->totalbytes >= limit) {
      /* only allow the GC to finished atleast 1 full cycle. */
      if (g->gcstate == GCSpause && ++cycle_count > 1) break;
      FUNC2(L);
    }
  }
  return (g->totalbytes >= limit) ? 1 : 0;
}