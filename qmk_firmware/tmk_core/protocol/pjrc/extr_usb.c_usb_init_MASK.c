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
 int EORSTE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int PLLCSR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int PLOCK ; 
 int SOFE ; 
 int SUSPE ; 
 scalar_t__ UDCON ; 
 int UDIEN ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int WAKEUPE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int suspend ; 
 scalar_t__ usb_configuration ; 

void FUNC5(void) {
    FUNC0();
    FUNC3();  // enable USB
    FUNC1();  // config PLL
    while (!(PLLCSR & (1 << PLOCK)))
        ;                   // wait for PLL lock
    FUNC2();           // start USB clock
    UDCON             = 0;  // enable attach resistor
    usb_configuration = 0;
    suspend           = false;
    UDIEN             = (1 << EORSTE) | (1 << SOFE) | (1 << SUSPE) | (1 << WAKEUPE);
    FUNC4();
}