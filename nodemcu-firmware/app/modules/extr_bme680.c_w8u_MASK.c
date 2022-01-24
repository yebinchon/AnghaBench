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

/* Variables and functions */
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 int /*<<< orphan*/  bme680_i2c_addr ; 
 int /*<<< orphan*/  bme680_i2c_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC4(uint8_t reg, uint8_t val) {
	FUNC2(bme680_i2c_id);
	FUNC0(bme680_i2c_id, bme680_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
	FUNC1(bme680_i2c_id, reg);
	FUNC1(bme680_i2c_id, val);
	FUNC3(bme680_i2c_id);
}