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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 int /*<<< orphan*/  ads1115_i2c_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC4(uint8_t ads_addr, uint8_t reg, uint16_t config) {
    FUNC2(ads1115_i2c_id);
    FUNC0(ads1115_i2c_id, ads_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    FUNC1(ads1115_i2c_id, reg);
    FUNC1(ads1115_i2c_id, (uint8_t)(config >> 8));
    FUNC1(ads1115_i2c_id, (uint8_t)(config & 0xFF));
    FUNC3(ads1115_i2c_id);
}