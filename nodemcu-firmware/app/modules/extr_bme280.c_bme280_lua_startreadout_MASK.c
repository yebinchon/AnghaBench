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
 int BME280_FORCED_MODE ; 
 int /*<<< orphan*/  BME280_REGISTER_CONTROL ; 
 int /*<<< orphan*/  BME280_REGISTER_CONTROL_HUM ; 
 scalar_t__ BME280_SAMPLING_DELAY ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int bme280_mode ; 
 int bme280_ossh ; 
 scalar_t__ bme280_readoutdone ; 
 int /*<<< orphan*/  bme280_timer ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ lua_connected_readout_ref ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(lua_State* L) {
	uint32_t delay;

	if (FUNC4(L, 1)) {
		delay = FUNC1(L, 1);
		if (!delay) {delay = BME280_SAMPLING_DELAY;} // if delay is 0 then set the default delay
	}

	if (!FUNC3(L, 2)) {
		FUNC5(L, 2);
		lua_connected_readout_ref = FUNC2(L, LUA_REGISTRYINDEX);
	} else {
		lua_connected_readout_ref = LUA_NOREF;
	}

	FUNC9(BME280_REGISTER_CONTROL_HUM, bme280_ossh);
	FUNC9(BME280_REGISTER_CONTROL, (bme280_mode & 0xFC) | BME280_FORCED_MODE);
	FUNC0("control old: %x, control: %x, delay: %d\n", bme280_mode, (bme280_mode & 0xFC) | BME280_FORCED_MODE, delay);

	if (lua_connected_readout_ref != LUA_NOREF) {
		FUNC0("timer armed\n");
		FUNC7 (&bme280_timer);
		FUNC8 (&bme280_timer, (os_timer_func_t *)bme280_readoutdone, L);
		FUNC6 (&bme280_timer, delay, 0); // trigger callback when readout is ready
	}
	return 0;
}