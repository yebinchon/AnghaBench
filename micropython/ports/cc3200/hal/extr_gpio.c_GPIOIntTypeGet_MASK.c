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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ GPIO_O_GPIO_IBE ; 
 scalar_t__ GPIO_O_GPIO_IEV ; 
 scalar_t__ GPIO_O_GPIO_IS ; 
 unsigned long FUNC2 (scalar_t__) ; 

unsigned long
FUNC3(unsigned long ulPort, unsigned char ucPin)
{
    unsigned long ulIBE, ulIS, ulIEV;

    //
    // Check the arguments.
    //
    FUNC0(FUNC1(ulPort));

    //
    // Return the pin interrupt type.
    //
    ulIBE = FUNC2(ulPort + GPIO_O_GPIO_IBE);
    ulIS = FUNC2(ulPort + GPIO_O_GPIO_IS);
    ulIEV = FUNC2(ulPort + GPIO_O_GPIO_IEV);
    return(((ulIBE & ucPin) ? 1 : 0) | ((ulIS & ucPin) ? 2 : 0) |
           ((ulIEV & ucPin) ? 4 : 0));
}