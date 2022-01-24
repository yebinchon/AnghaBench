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

/* Variables and functions */
 int GPPUA ; 
 int /*<<< orphan*/  I2C_ADDR_WRITE ; 
 int IODIRA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int i2c_initialized ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 
 int mcp23018_status ; 

uint8_t FUNC5(void) {
    mcp23018_status = 0x20;

    /* I2C subsystem */

    if (i2c_initialized == 0) {
        FUNC1();  // on pins D(1,0)
        i2c_initialized = true;
        FUNC0(1000);
    }

    /* B Pins are Row, A pins are Columns 
       Set them to output */
    mcp23018_status = FUNC2(I2C_ADDR_WRITE);    if (mcp23018_status) goto out;
    mcp23018_status = FUNC4(IODIRA);            if (mcp23018_status) goto out;
    mcp23018_status = FUNC4(0b11111111);        if (mcp23018_status) goto out;
    /* Now write to IODIRB */
    mcp23018_status = FUNC4(0b00000000);        if (mcp23018_status) goto out;
    FUNC3();

    mcp23018_status = FUNC2(I2C_ADDR_WRITE);    if (mcp23018_status) goto out;
    mcp23018_status = FUNC4(GPPUA);             if (mcp23018_status) goto out;
    mcp23018_status = FUNC4(0b11111111);        if (mcp23018_status) goto out;
    /* Now write to GPPUB */
    mcp23018_status = FUNC4(0b00000000);        if (mcp23018_status) goto out;

out:
    FUNC3();

    return mcp23018_status;
}