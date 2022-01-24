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
 int /*<<< orphan*/  COL10 ; 
 int /*<<< orphan*/  COL11 ; 
 int /*<<< orphan*/  COL12 ; 
 int /*<<< orphan*/  COL13 ; 
 int /*<<< orphan*/  COL7 ; 
 int /*<<< orphan*/  COL8 ; 
 int /*<<< orphan*/  COL9 ; 
 int /*<<< orphan*/  DDRB ; 
 int /*<<< orphan*/  DDRC ; 
 int /*<<< orphan*/  DDRD ; 
 int GPIOA ; 
 int /*<<< orphan*/  I2C_ADDR_WRITE ; 
 int /*<<< orphan*/  I2C_TIMEOUT ; 
 int /*<<< orphan*/  PORTB ; 
 int /*<<< orphan*/  PORTC ; 
 int /*<<< orphan*/  PORTD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ mcp23018_status ; 

__attribute__((used)) static void FUNC3(uint8_t row)
{
    if (row < 7) {
        // select on mcp23018
        if (mcp23018_status) { // do nothing on error
        } else { // set active row low  : 0 // set other rows hi-Z : 1
            mcp23018_status = FUNC0(I2C_ADDR_WRITE, I2C_TIMEOUT);        if (mcp23018_status) goto out;
            mcp23018_status = FUNC2(GPIOA, I2C_TIMEOUT);                 if (mcp23018_status) goto out;
            mcp23018_status = FUNC2(0xFF & ~(1<<row), I2C_TIMEOUT);      if (mcp23018_status) goto out;
        out:
            FUNC1();
        }
    } else {
        // Output low(DDR:1, PORT:0) to select
        switch (row) {
            case 7:
                DDRB  |= COL7;
                PORTB &= ~COL7;
                break;
            case 8:
                DDRB  |= COL8;
                PORTB &= ~COL8;
                break;
            case 9:
                DDRB  |= COL9;
                PORTB &= ~COL9;
                break;
            case 10:
                DDRB  |= COL10;
                PORTB &= ~COL10;
                break;
            case 11:
                DDRD  |= COL11;
                PORTD &= ~COL11;
                break;
            case 12:
                DDRD  |= COL12;
                PORTD &= ~COL12;
                break;
            case 13:
                DDRC  |= COL13;
                PORTC &= ~COL13;
                break;
        }
    }
}