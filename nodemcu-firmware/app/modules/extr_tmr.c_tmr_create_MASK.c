#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* tmr_t ;
typedef  int /*<<< orphan*/  timer_struct_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  os; int /*<<< orphan*/  mode; void* self_ref; void* lua_ref; } ;

/* Variables and functions */
 void* LUA_NOREF ; 
 int /*<<< orphan*/  TIMER_MODE_OFF ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( lua_State *L ) {
	tmr_t ud = (tmr_t)FUNC2(L, sizeof(timer_struct_t));
	if (!ud) return FUNC0(L, "not enough memory");
	FUNC1(L, "tmr.timer");
	FUNC3(L, -2);
	ud->lua_ref = LUA_NOREF;
	ud->self_ref = LUA_NOREF;
	ud->mode = TIMER_MODE_OFF;
	FUNC4(&ud->os);
	return 1;
}