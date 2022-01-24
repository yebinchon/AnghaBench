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
typedef  scalar_t__ tBoolean ;

/* Variables and functions */
 int /*<<< orphan*/  PIN_STRENGTH_2MA ; 
 int /*<<< orphan*/  PIN_TYPE_OD ; 
 int /*<<< orphan*/  PIN_TYPE_STD ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

void FUNC2(unsigned long ulPin,unsigned long ulPinMode,tBoolean bOpenDrain)
{

    //
    // Set the pin for standard push-pull operation.
    //
    if(bOpenDrain)
    {
            FUNC0(ulPin, PIN_STRENGTH_2MA, PIN_TYPE_OD);
    }
    else
    {
            FUNC0(ulPin, PIN_STRENGTH_2MA, PIN_TYPE_STD);
    }

    //
    // Set the pin to specified mode
    //
    FUNC1(ulPin, ulPinMode);

}