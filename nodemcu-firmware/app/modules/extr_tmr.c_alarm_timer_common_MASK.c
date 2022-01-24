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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {scalar_t__ lua_ref; scalar_t__ self_ref; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 scalar_t__ LUA_REFNIL ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  TIMER_IDLE_FLAG ; 
 int /*<<< orphan*/  TIMER_MODE_AUTO ; 
 int /*<<< orphan*/  TIMER_MODE_OFF ; 
 int /*<<< orphan*/  TIMER_MODE_SEMI ; 
 int /*<<< orphan*/  TIMER_MODE_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void* arg){
	tmr_t tmr = (tmr_t)arg;
	lua_State* L = FUNC2();
	if(tmr->lua_ref == LUA_NOREF)
		return;
	FUNC3(L, LUA_REGISTRYINDEX, tmr->lua_ref);
	FUNC3(L, LUA_REGISTRYINDEX, tmr->self_ref);
	//if the timer was set to single run we clean up after it
	if(tmr->mode == TIMER_MODE_SINGLE){
		FUNC0(L, LUA_REGISTRYINDEX, tmr->lua_ref);
		tmr->lua_ref = LUA_NOREF;
		tmr->mode = TIMER_MODE_OFF;
	}else if(tmr->mode == TIMER_MODE_SEMI){
		tmr->mode |= TIMER_IDLE_FLAG;
	}
	if (tmr->mode != TIMER_MODE_AUTO && tmr->self_ref != LUA_REFNIL) {
		FUNC0(L, LUA_REGISTRYINDEX, tmr->self_ref);
		tmr->self_ref = LUA_NOREF;
	}
	FUNC1(L, 1, 0);
}