#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int hookmask; scalar_t__ hookcount; int /*<<< orphan*/  ci; int /*<<< orphan*/  const* savedpc; } ;
typedef  TYPE_2__ lua_State ;
typedef  int lu_byte ;
struct TYPE_7__ {int /*<<< orphan*/ * p; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
typedef  int /*<<< orphan*/  Proto ;
typedef  int /*<<< orphan*/  const Instruction ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_HOOKCOUNT ; 
 int /*<<< orphan*/  LUA_HOOKLINE ; 
 int LUA_MASKCOUNT ; 
 int LUA_MASKLINE ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, const Instruction *pc) {
  lu_byte mask = L->hookmask;
  const Instruction *oldpc = L->savedpc;
  L->savedpc = pc;
  if ((mask & LUA_MASKCOUNT) && L->hookcount == 0) {
    FUNC4(L);
    FUNC2(L, LUA_HOOKCOUNT, -1);
  }
  if (mask & LUA_MASKLINE) {
    Proto *p = FUNC0(L->ci)->l.p;
    int npc = FUNC3(pc, p);
    int newline = FUNC1(p, npc);
    /* call linehook when enter a new function, when jump back (loop),
       or when enter a new line */
    if (npc == 0 || pc <= oldpc || newline != FUNC1(p, FUNC3(oldpc, p)))
      FUNC2(L, LUA_HOOKLINE, newline);
  }
}