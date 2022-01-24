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
 int /*<<< orphan*/  AD5258_ADDR ; 
 int /*<<< orphan*/  AD5258_INST_RDAC ; 
 int /*<<< orphan*/  I2C_NACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

uint8_t FUNC5(void) {
    // read RDAC register
    FUNC4(AD5258_ADDR);
    FUNC2(AD5258_INST_RDAC);
    FUNC3(AD5258_ADDR);
    uint8_t ret = FUNC0(I2C_NACK);
    FUNC1();
    return ret;
}