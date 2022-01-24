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
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 int /*<<< orphan*/  adxl345_i2c_addr ; 
 int /*<<< orphan*/  adxl345_i2c_id ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(lua_State* L) {
    uint8_t  devid;

    devid = FUNC5(adxl345_i2c_id, 0x00);

    if (devid != 229) {
        return FUNC0(L, "device not found");
    }

    // Enable sensor
    FUNC3(adxl345_i2c_id);
    FUNC1(adxl345_i2c_id, adxl345_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    FUNC2(adxl345_i2c_id, 0x2D);
    FUNC2(adxl345_i2c_id, 0x08);
    FUNC4(adxl345_i2c_id);

    return 0;
}