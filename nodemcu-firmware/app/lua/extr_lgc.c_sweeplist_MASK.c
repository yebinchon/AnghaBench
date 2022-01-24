#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lu_mem ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_12__ {int /*<<< orphan*/  openupval; } ;
struct TYPE_11__ {scalar_t__ tt; int marked; TYPE_1__* next; } ;
struct TYPE_10__ {TYPE_6__ gch; } ;
typedef  TYPE_1__ GCObject ;

/* Variables and functions */
 int /*<<< orphan*/  FIXEDBIT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LUA_TTHREAD ; 
 int /*<<< orphan*/  SFIXEDBIT ; 
 int WHITEBITS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_7__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GCObject **FUNC11 (lua_State *L, GCObject **p, lu_mem count) {
  GCObject *curr;
  global_State *g = FUNC0(L);
  int deadmask = FUNC8(g);
  while ((curr = *p) != NULL && count-- > 0) {
    FUNC6(!FUNC4(&(curr->gch)) || curr->gch.tt == LUA_TTHREAD);
    if (curr->gch.tt == LUA_TTHREAD)  /* sweep open upvalues of each thread */
      FUNC9(L, &FUNC3(curr)->openupval);
    if ((curr->gch.marked ^ WHITEBITS) & deadmask) {  /* not dead? */
      FUNC6(!FUNC5(g, curr) || FUNC10(curr->gch.marked, FIXEDBIT));
      FUNC7(g, curr);  /* make it white (for next cycle) */
      p = &curr->gch.next;
    }
    else {  /* must erase `curr' */
      FUNC6(FUNC5(g, curr) || deadmask == FUNC1(SFIXEDBIT));
      *p = curr->gch.next;
      FUNC2(L, curr);
    }
  }
  return p;
}