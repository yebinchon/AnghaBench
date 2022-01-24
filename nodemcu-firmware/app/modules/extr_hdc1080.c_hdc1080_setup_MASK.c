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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int HDC1080_CONFIG_REGISTER ; 
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 int /*<<< orphan*/  hdc1080_i2c_addr ; 
 int /*<<< orphan*/  hdc1080_i2c_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(lua_State* L) {

	// Configure Sensor
    FUNC2(hdc1080_i2c_id);
    FUNC0(hdc1080_i2c_id, hdc1080_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    FUNC1(hdc1080_i2c_id, HDC1080_CONFIG_REGISTER);
    FUNC1(hdc1080_i2c_id, 0x05); //Bit[10] to 1 for 11 bit resolution , Set Bit[9:8] to 01 for 11 bit resolution.
    FUNC1(hdc1080_i2c_id, 0x00);
    FUNC3(hdc1080_i2c_id);

    return 0;
}