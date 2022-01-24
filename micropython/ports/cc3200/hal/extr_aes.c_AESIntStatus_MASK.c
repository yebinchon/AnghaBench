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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ AES_BASE ; 
 scalar_t__ AES_O_IRQENABLE ; 
 scalar_t__ AES_O_IRQSTATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DTHE_BASE ; 
 scalar_t__ DTHE_O_AES_MIS ; 
 scalar_t__ DTHE_O_AES_RIS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

uint32_t
FUNC2(uint32_t ui32Base, bool bMasked)
{
    uint32_t ui32Temp;
    uint32_t ui32IrqEnable;

    //
    // Check the arguments.
    //
    FUNC0(ui32Base == AES_BASE);

    //
    // Read the IRQ status register and return the value.
    //
    if(bMasked)
    {
        ui32Temp = FUNC1(DTHE_BASE + DTHE_O_AES_MIS);
        ui32IrqEnable = FUNC1(ui32Base + AES_O_IRQENABLE);
        return((FUNC1(ui32Base + AES_O_IRQSTATUS) &
                ui32IrqEnable) | ((ui32Temp & 0x0000000F) << 16));
    }
    else
    {
        ui32Temp = FUNC1(DTHE_BASE + DTHE_O_AES_RIS);
        return(FUNC1(ui32Base + AES_O_IRQSTATUS) |
               ((ui32Temp & 0x0000000F) << 16));
    }
}