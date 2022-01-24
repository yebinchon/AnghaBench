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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_RECEIVER ; 
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 int /*<<< orphan*/  i2c_addr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC5(uint32_t id, uint8_t reg) {
    uint8_t ret;

    FUNC3(id);
    FUNC1(id, i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    FUNC2(id, reg);
    FUNC4(id);
    FUNC3(id);
    FUNC1(id, i2c_addr, PLATFORM_I2C_DIRECTION_RECEIVER);
    ret = FUNC0(id, 0);
    FUNC4(id);
    return ret;
}