#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  TYPE_1__* tmr_t ;
typedef  scalar_t__ sint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int mode; scalar_t__ lua_ref; int /*<<< orphan*/  os; scalar_t__ interval; } ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 scalar_t__ MAX_TIMEOUT ; 
 char* MAX_TIMEOUT_ERR_STR ; 
 int TIMER_IDLE_FLAG ; 
 int TIMER_MODE_AUTO ; 
 int TIMER_MODE_OFF ; 
 int TIMER_MODE_SEMI ; 
 int TIMER_MODE_SINGLE ; 
 int /*<<< orphan*/  alarm_timer_common ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(lua_State* L){
	tmr_t tmr = FUNC8(L, 1);

	uint32_t interval = FUNC1(L, 2);
	uint8_t mode = FUNC1(L, 3);

	FUNC0(L, (interval > 0 && interval <= MAX_TIMEOUT), 2, MAX_TIMEOUT_ERR_STR);
	FUNC0(L, (mode == TIMER_MODE_SINGLE || mode == TIMER_MODE_SEMI || mode == TIMER_MODE_AUTO), 3, "Invalid mode");
	FUNC0(L, (FUNC5(L, 4) == LUA_TFUNCTION || FUNC5(L, 4) == LUA_TLIGHTFUNCTION), 4, "Must be function");
	//get the lua function reference
	FUNC4(L, 4);
	sint32_t ref = FUNC2(L, LUA_REGISTRYINDEX);
	if(!(tmr->mode & TIMER_IDLE_FLAG) && tmr->mode != TIMER_MODE_OFF)
		FUNC6(&tmr->os);
	//there was a bug in this part, the second part of the following condition was missing
	if(tmr->lua_ref != LUA_NOREF && tmr->lua_ref != ref)
		FUNC3(L, LUA_REGISTRYINDEX, tmr->lua_ref);
	tmr->lua_ref = ref;
	tmr->mode = mode|TIMER_IDLE_FLAG;
	tmr->interval = interval;
	FUNC7(&tmr->os, alarm_timer_common, tmr);
	return 0;
}