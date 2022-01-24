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
typedef  int /*<<< orphan*/  REFGUID ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DIEFT_CONDITION ; 
 int /*<<< orphan*/  DIEFT_CONSTANTFORCE ; 
 int /*<<< orphan*/  DIEFT_CUSTOMFORCE ; 
 int /*<<< orphan*/  DIEFT_PERIODIC ; 
 int /*<<< orphan*/  DIEFT_RAMPFORCE ; 
 int /*<<< orphan*/  GUID_ConstantForce ; 
 int /*<<< orphan*/  GUID_CustomForce ; 
 int /*<<< orphan*/  GUID_Damper ; 
 int /*<<< orphan*/  GUID_Friction ; 
 int /*<<< orphan*/  GUID_Inertia ; 
 int /*<<< orphan*/  GUID_RampForce ; 
 int /*<<< orphan*/  GUID_SawtoothDown ; 
 int /*<<< orphan*/  GUID_SawtoothUp ; 
 int /*<<< orphan*/  GUID_Sine ; 
 int /*<<< orphan*/  GUID_Spring ; 
 int /*<<< orphan*/  GUID_Square ; 
 int /*<<< orphan*/  GUID_Triangle ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

DWORD FUNC3(REFGUID guid)
{
    if (FUNC0(guid, &GUID_ConstantForce)) {
        return DIEFT_CONSTANTFORCE;
    } else if (FUNC0(guid, &GUID_Square)
            || FUNC0(guid, &GUID_Sine)
            || FUNC0(guid, &GUID_Triangle)
            || FUNC0(guid, &GUID_SawtoothUp)
            || FUNC0(guid, &GUID_SawtoothDown)) {
        return DIEFT_PERIODIC;
    } else if (FUNC0(guid, &GUID_RampForce)) {
        return DIEFT_RAMPFORCE;
    } else if (FUNC0(guid, &GUID_Spring)
            || FUNC0(guid, &GUID_Damper)
            || FUNC0(guid, &GUID_Inertia)
            || FUNC0(guid, &GUID_Friction)) {
        return DIEFT_CONDITION;
    } else if (FUNC0(guid, &GUID_CustomForce)) {
        return DIEFT_CUSTOMFORCE;
    } else {
        FUNC1("GUID (%s) is not a known force type\n", FUNC2(guid));
        return 0;
    }
}