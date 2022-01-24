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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  os_timer_func_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  BME680_CONF_OS_H_ADDR ; 
 int /*<<< orphan*/  BME680_CONF_T_P_MODE_ADDR ; 
 int BME680_FORCED_MODE ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ bme280_readoutdone ; 
 int bme680_mode ; 
 int /*<<< orphan*/  bme680_timer ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ lua_connected_readout_ref ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int os_hum ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(lua_State* L) {
	uint32_t delay;

	if (FUNC5(L, 1)) {
		delay = FUNC2(L, 1);
		if (!delay) {delay = FUNC1();} // if delay is 0 then set the default delay
	}

	if (!FUNC4(L, 2)) {
		FUNC6(L, 2);
		lua_connected_readout_ref = FUNC3(L, LUA_REGISTRYINDEX);
	} else {
		lua_connected_readout_ref = LUA_NOREF;
	}

  FUNC10(BME680_CONF_OS_H_ADDR, os_hum);
  FUNC10(BME680_CONF_T_P_MODE_ADDR, (bme680_mode & 0xFC) | BME680_FORCED_MODE);

	FUNC0("control old: %x, control: %x, delay: %d\n", bme680_mode, (bme680_mode & 0xFC) | BME680_FORCED_MODE, delay);

	if (lua_connected_readout_ref != LUA_NOREF) {
		FUNC0("timer armed\n");
		FUNC8 (&bme680_timer);
		FUNC9 (&bme680_timer, (os_timer_func_t *)bme280_readoutdone, L);
		FUNC7 (&bme680_timer, delay, 0); // trigger callback when readout is ready
	}
	return 0;
}