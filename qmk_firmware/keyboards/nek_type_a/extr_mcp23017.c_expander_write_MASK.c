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
typedef  int /*<<< orphan*/  val ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int EXPANDER_ADDR ; 
 int /*<<< orphan*/  I2C_TIMEOUT ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned char,int /*<<< orphan*/ ) ; 

uint8_t FUNC3(uint8_t reg, unsigned char val) {
    uint8_t addr = reg;
    uint8_t result = FUNC0(EXPANDER_ADDR << 1, I2C_TIMEOUT, &addr, sizeof(addr), &val, sizeof(val));
    if (result) {
        FUNC2("mcp: set_register %d = %d failed: %s\n", reg, val, FUNC1(result));
    }
    return result == 0;
}