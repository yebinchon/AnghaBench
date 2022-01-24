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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  TCS34725_ENABLE ; 
 int TCS34725_ENABLE_AEN ; 
 int TCS34725_ENABLE_PON ; 
 int /*<<< orphan*/  TCS34725_GAIN_60X ; 
 int /*<<< orphan*/  TCS34725_INTEGRATIONTIME_2_4MS ; 
 int _tcs34725Initialised ; 
 int /*<<< orphan*/  cb_tcs_en ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tcs34725_timer ; 

uint8_t FUNC9()
{
	FUNC0("Enable finished\n");
	lua_State *L = FUNC3();
	FUNC5 (&tcs34725_timer);
	FUNC8(TCS34725_ENABLE, TCS34725_ENABLE_PON | TCS34725_ENABLE_AEN);

	/* Ready to go ... set the initialised flag */
	_tcs34725Initialised = true;

	/* This needs to take place after the initialisation flag! */
	FUNC7(TCS34725_INTEGRATIONTIME_2_4MS, L);
	FUNC6(TCS34725_GAIN_60X, L);

	FUNC4(L, LUA_REGISTRYINDEX, cb_tcs_en); // Get the callback to call
	FUNC1(L, LUA_REGISTRYINDEX, cb_tcs_en); // Unregister the callback to avoid leak
	cb_tcs_en = LUA_NOREF;
	FUNC2(L, 0, 0);

	return 0;
}