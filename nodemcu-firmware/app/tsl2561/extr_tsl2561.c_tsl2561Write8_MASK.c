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
typedef  int /*<<< orphan*/  tsl2561Error_t ;

/* Variables and functions */
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 int /*<<< orphan*/  TSL2561_ERROR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsl2561Address ; 
 int /*<<< orphan*/  tsl2561_i2c_id ; 

tsl2561Error_t FUNC4(uint8_t reg, uint8_t value) {
	FUNC2(tsl2561_i2c_id);
	FUNC0(tsl2561_i2c_id, tsl2561Address, PLATFORM_I2C_DIRECTION_TRANSMITTER);
	FUNC1(tsl2561_i2c_id, reg);
	FUNC1(tsl2561_i2c_id, value);
	FUNC3(tsl2561_i2c_id);
	return TSL2561_ERROR_OK;
}