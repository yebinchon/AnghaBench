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
typedef  int matrix_row_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  I2C_ADDR_READ ; 
 int /*<<< orphan*/  I2C_ADDR_WRITE ; 
 scalar_t__ I2C_STATUS_SUCCESS ; 
 int /*<<< orphan*/  I2C_TIMEOUT ; 
 int PINF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ mcp23018_status ; 

__attribute__((used)) static matrix_row_t FUNC4(uint8_t row)
{
    if (row < 8) {
        if (mcp23018_status) { // if there was an error
            return 0;
        } else {
            uint8_t data = 0;
            mcp23018_status = FUNC1(I2C_ADDR_WRITE, I2C_TIMEOUT);   if (mcp23018_status) goto out;
            mcp23018_status = FUNC3(GPIOB, I2C_TIMEOUT);            if (mcp23018_status) goto out;
            mcp23018_status = FUNC1(I2C_ADDR_READ, I2C_TIMEOUT);    if (mcp23018_status) goto out;
            data = FUNC0(I2C_TIMEOUT);                         if (mcp23018_status < 0) goto out;
            data = ~((uint8_t)mcp23018_status);
            mcp23018_status = I2C_STATUS_SUCCESS;
        out:
            FUNC2();
            return data;
        }
    } else {
        // read from teensy
        return
            (PINF&(1<<0) ? 0 : (1<<0)) |
            (PINF&(1<<1) ? 0 : (1<<1)) |
            (PINF&(1<<4) ? 0 : (1<<2)) |
            (PINF&(1<<5) ? 0 : (1<<3)) |
            (PINF&(1<<6) ? 0 : (1<<4)) |
            (PINF&(1<<7) ? 0 : (1<<5)) ;
    }
}