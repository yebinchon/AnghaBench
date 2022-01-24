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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOTDOX_I2C_TIMEOUT ; 
 int /*<<< orphan*/  I2C_ADDR_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int i2c_initialized ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
    uint8_t ret = FUNC1(I2C_ADDR_WRITE, HOTDOX_I2C_TIMEOUT);

    if (ret == 0)
    {
        FUNC2();

        if (!i2c_initialized)
        {
            i2c_initialized = true;
            FUNC3();
            FUNC0();
            FUNC4("mcp23017 attached!!!\n");
        }
    }
    else
    {
        if (i2c_initialized)
        {
            i2c_initialized = false;
            FUNC0();
            FUNC4("mcp23017 deattached!!!\n");
        }
    }

    return;
}