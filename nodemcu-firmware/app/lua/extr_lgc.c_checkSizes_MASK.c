#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ nuse; int size; } ;
struct TYPE_5__ {int /*<<< orphan*/  buff; TYPE_1__ strt; } ;
typedef  TYPE_2__ global_State ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int LUA_MINBUFFER ; 
 int MINSTRTABSIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lu_int32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6 (lua_State *L) {
  global_State *g = FUNC0(L);
  /* check size of string hash */
  if (g->strt.nuse < FUNC1(lu_int32, g->strt.size/4) &&
      g->strt.size > MINSTRTABSIZE*2)
    FUNC2(L, g->strt.size/2);  /* table is too big */
  /* it is not safe to re-size the buffer if it is in use. */
  if (FUNC3(&g->buff) > 0) return;
  /* check size of buffer */
  if (FUNC5(&g->buff) > LUA_MINBUFFER*2) {  /* buffer too big? */
    size_t newsize = FUNC5(&g->buff) / 2;
    FUNC4(L, &g->buff, newsize);
  }
}