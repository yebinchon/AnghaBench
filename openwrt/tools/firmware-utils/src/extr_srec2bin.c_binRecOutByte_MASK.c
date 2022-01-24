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
typedef  scalar_t__ bit8u ;
typedef  scalar_t__ bit32u ;

/* Variables and functions */
 scalar_t__ AddressCurrent ; 
 int /*<<< orphan*/  CheckSum ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(bit32u Address, bit8u Data)
{
    //  If Address is one after Current Address, output Byte
    //  If not, close out last record, update Length, write checksum
    //  Then Start New Record, updating Current Address

    if (Address != (AddressCurrent+1))
    {
        FUNC1();
        FUNC2(Address);
    }
    AddressCurrent = Address;
    CheckSum += Data;
    FUNC0( Data );
}