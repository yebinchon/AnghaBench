#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  os_timer_func_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 int /*<<< orphan*/  TCS34725_ENABLE ; 
 int /*<<< orphan*/  TCS34725_ENABLE_PON ; 
 int /*<<< orphan*/  TCS34725_EN_DELAY ; 
 scalar_t__ cb_tcs_en ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ tcs34725EnableDone ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcs34725_timer ; 

uint8_t FUNC10(lua_State* L)
{
	FUNC0("Enable begun\n");

	if (FUNC5(L, 1) == LUA_TFUNCTION || FUNC5(L, 1) == LUA_TLIGHTFUNCTION) {
		if (cb_tcs_en != LUA_NOREF) {
			FUNC3(L, LUA_REGISTRYINDEX, cb_tcs_en);
		}
		FUNC4(L, 1);
		cb_tcs_en = FUNC2(L, LUA_REGISTRYINDEX);
	} else {
		return FUNC1(L, "Enable argument must be a function.");
	}

	FUNC9(TCS34725_ENABLE, TCS34725_ENABLE_PON);
	// Start a timer to wait TCS34725_EN_DELAY before calling tcs34725EnableDone
	FUNC7 (&tcs34725_timer);
	FUNC8 (&tcs34725_timer, (os_timer_func_t *)tcs34725EnableDone, NULL);
	FUNC6 (&tcs34725_timer, TCS34725_EN_DELAY, 0); // trigger callback when readout is ready

	return 0;
}