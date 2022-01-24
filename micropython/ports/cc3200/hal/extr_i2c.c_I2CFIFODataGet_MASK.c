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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int I2C_FIFOSTATUS_RXFE ; 
 int I2C_O_FIFODATA ; 
 int I2C_O_FIFOSTATUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

uint32_t
FUNC3(uint32_t ui32Base)
{
    //
    // Check the arguments.
    //
    FUNC0(FUNC2(ui32Base));

    //
    // Wait until there is data to read.
    //
    while(FUNC1(ui32Base + I2C_O_FIFOSTATUS) & I2C_FIFOSTATUS_RXFE)
    {
    }

    //
    // Read a byte.
    //
    return(FUNC1(ui32Base + I2C_O_FIFODATA));
}