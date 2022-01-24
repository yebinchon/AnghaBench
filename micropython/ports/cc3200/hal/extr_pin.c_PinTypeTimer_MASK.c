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
 int PIN_STRENGTH_2MA ; 
 int PIN_STRENGTH_4MA ; 
 int /*<<< orphan*/  PIN_TYPE_STD ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

void FUNC2(unsigned long ulPin,unsigned long ulPinMode)
{

    //
    // Set the pin to specified mode
    //
    FUNC1(ulPin,ulPinMode);

    //
    // Set the pin for standard operation
    //
    FUNC0(ulPin,PIN_STRENGTH_2MA|PIN_STRENGTH_4MA,PIN_TYPE_STD);
}