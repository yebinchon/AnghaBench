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
 int /*<<< orphan*/  ERGODOX_EZ_I2C_TIMEOUT ; 
 int GPPUA ; 
 int /*<<< orphan*/  I2C_ADDR_WRITE ; 
 int IODIRA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int i2c_initialized ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int mcp23018_status ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

uint8_t FUNC6(void) {
    FUNC5("starting init");
    mcp23018_status = 0x20;

    // I2C subsystem

    // uint8_t sreg_prev;
    // sreg_prev=SREG;
    // cli();

    if (i2c_initialized == 0) {
        FUNC1();  // on pins D(1,0)
        i2c_initialized = true;
        FUNC0(1000);
    }
    // i2c_init(); // on pins D(1,0)
    // _delay_ms(1000);

    // set pin direction
    // - unused  : input  : 1
    // - input   : input  : 1
    // - driving : output : 0
    mcp23018_status = FUNC2(I2C_ADDR_WRITE, ERGODOX_EZ_I2C_TIMEOUT);    if (mcp23018_status) goto out;
    mcp23018_status = FUNC4(IODIRA, ERGODOX_EZ_I2C_TIMEOUT);            if (mcp23018_status) goto out;
    mcp23018_status = FUNC4(0b10000000, ERGODOX_EZ_I2C_TIMEOUT);        if (mcp23018_status) goto out;
    mcp23018_status = FUNC4(0b11111111, ERGODOX_EZ_I2C_TIMEOUT);        if (mcp23018_status) goto out;
    FUNC3();

    // set pull-up
    // - unused  : on  : 1
    // - input   : on  : 1
    // - driving : off : 0
    mcp23018_status = FUNC2(I2C_ADDR_WRITE, ERGODOX_EZ_I2C_TIMEOUT);    if (mcp23018_status) goto out;
    mcp23018_status = FUNC4(GPPUA, ERGODOX_EZ_I2C_TIMEOUT);             if (mcp23018_status) goto out;
    mcp23018_status = FUNC4(0b10000000, ERGODOX_EZ_I2C_TIMEOUT);        if (mcp23018_status) goto out;
    mcp23018_status = FUNC4(0b11111111, ERGODOX_EZ_I2C_TIMEOUT);        if (mcp23018_status) goto out;

out:
    FUNC3();
    // SREG=sreg_prev;
    //uprintf("Init %x\n", mcp23018_status);
    return mcp23018_status;
}