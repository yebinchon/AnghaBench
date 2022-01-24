#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_7__ {int hookmask; TYPE_5__* ci; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_8__ {int /*<<< orphan*/  tailcalls; } ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_HOOKRET ; 
 int /*<<< orphan*/  LUA_HOOKTAILRET ; 
 int LUA_MASKRET ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static StkId FUNC4 (lua_State *L, StkId firstResult) {
  ptrdiff_t fr = FUNC3(L, firstResult);  /* next call may change stack */
  FUNC1(L, LUA_HOOKRET, -1);
  if (FUNC0(L->ci)) {  /* Lua function? */
    while ((L->hookmask & LUA_MASKRET) && L->ci->tailcalls--) /* tail calls */
      FUNC1(L, LUA_HOOKTAILRET, -1);
  }
  return FUNC2(L, fr);
}