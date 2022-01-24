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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  SI7021_CMD_READ_HEATER_REG ; 
 int /*<<< orphan*/  SI7021_CMD_READ_RHT_REG ; 
 int /*<<< orphan*/  SI7021_CMD_WRITE_HEATER_REG ; 
 int /*<<< orphan*/  SI7021_CMD_WRITE_RHT_REG ; 
 int SI7021_HEATER_DISABLE ; 
 int SI7021_HEATER_ENABLE ; 
 int SI7021_RH08_TEMP12 ; 
 int SI7021_RH10_TEMP13 ; 
 int SI7021_RH11_TEMP11 ; 
 int SI7021_RH12_TEMP14 ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int si7021_config ; 
 int si7021_heater ; 
 int si7021_heater_setting ; 
 int si7021_res ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(lua_State* L) {

	// check variable
	if (!FUNC2(L, 1)) {
		return FUNC1(L, "wrong arg range");
	}

	si7021_res = FUNC0(L, 1);
	if (!((si7021_res == SI7021_RH12_TEMP14) || (si7021_res == SI7021_RH08_TEMP12) || (si7021_res == SI7021_RH10_TEMP13) || (si7021_res == SI7021_RH11_TEMP11))) {
		return FUNC1(L, "Invalid argument: resolution");
	}

	si7021_config = (si7021_res | 0x3A);
	FUNC5(SI7021_CMD_WRITE_RHT_REG,si7021_config);

	// Parse optional parameters
	if (FUNC2(L, 2)) {

		if (!FUNC2(L, 2) || !FUNC2(L, 3)) {
			return FUNC1(L, "wrong arg range");
		}

		si7021_heater = FUNC0(L, 2);
		if (!((si7021_heater == SI7021_HEATER_ENABLE) || (si7021_heater == SI7021_HEATER_DISABLE))) {
			return FUNC1(L, "Invalid argument: heater");
		}

		si7021_heater_setting = FUNC0(L, 3);
		if ((si7021_heater_setting < 0x00) || (si7021_heater_setting > 0x0F)) {
			return FUNC1(L, "Invalid argument: heater_setting");
		}

		si7021_config = (si7021_res | si7021_heater | 0x3A);
		FUNC5(SI7021_CMD_WRITE_RHT_REG,si7021_config);
		FUNC5(SI7021_CMD_WRITE_HEATER_REG,(si7021_heater_setting & 0x0F));
	}

	uint8_t buf_c[1];
	uint8_t buf_h[1];
	FUNC4(SI7021_CMD_READ_RHT_REG, buf_c, 1);
	FUNC4(SI7021_CMD_READ_HEATER_REG, buf_h, 1);

	FUNC3(L, ((buf_c[0] >> 6) + (buf_c[0] & 0x01)));
	FUNC3(L, ((buf_c[0] >> 6) & 0x01));
	FUNC3(L, ((buf_c[0] >> 2) & 0x01));
	FUNC3(L, (buf_h[0] & 0x0F));

	return 4;
}