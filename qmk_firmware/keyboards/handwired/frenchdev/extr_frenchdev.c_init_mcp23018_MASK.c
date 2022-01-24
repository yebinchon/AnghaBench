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
 int /*<<< orphan*/  I2C_TIMEOUT ; 
 int IODIRA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int i2c_initialized ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int mcp23018_status ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

uint8_t FUNC5(void) {
    mcp23018_status = 0x20;

    // I2C subsystem

    // uint8_t sreg_prev;
    // sreg_prev=SREG;
    // cli();
    if (i2c_initialized == 0) {
        FUNC0();  // on pins D(1,0)
        i2c_initialized = true;;
        FUNC4(1000);
    }

    // set pin direction
    // - unused  : input  : 1
    // - input   : input  : 1
    // - driving : output : 0
    mcp23018_status = FUNC1(I2C_ADDR_WRITE, I2C_TIMEOUT);    if (mcp23018_status) goto out;
    mcp23018_status = FUNC3(IODIRA, I2C_TIMEOUT);            if (mcp23018_status) goto out;
    mcp23018_status = FUNC3(0b00000000, I2C_TIMEOUT);        if (mcp23018_status) goto out;
    mcp23018_status = FUNC3(0b00111111, I2C_TIMEOUT);        if (mcp23018_status) goto out;
    FUNC2();

    // set pull-up
    // - unused  : on  : 1
    // - input   : on  : 1
    // - driving : off : 0
    mcp23018_status = FUNC1(I2C_ADDR_WRITE, I2C_TIMEOUT);    if (mcp23018_status) goto out;
    mcp23018_status = FUNC3(GPPUA, I2C_TIMEOUT);             if (mcp23018_status) goto out;
    mcp23018_status = FUNC3(0b00000000, I2C_TIMEOUT);        if (mcp23018_status) goto out;
    mcp23018_status = FUNC3(0b00111111, I2C_TIMEOUT);        if (mcp23018_status) goto out;

out:
    FUNC2();

    // SREG=sreg_prev;

    return mcp23018_status;
}