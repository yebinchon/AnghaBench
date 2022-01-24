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

/* Variables and functions */
 int /*<<< orphan*/  I2Cx_EV_IRQn ; 
 int /*<<< orphan*/  MBOOT_I2Cx ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void) {
    FUNC2(0);
    FUNC3(50);
    FUNC4();
    #if defined(MBOOT_I2C_SCL)
    i2c_slave_shutdown(MBOOT_I2Cx, I2Cx_EV_IRQn);
    #endif
    FUNC3(50);
    FUNC0();
}