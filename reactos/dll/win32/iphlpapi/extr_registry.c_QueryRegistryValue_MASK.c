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
typedef  int /*<<< orphan*/  PWCHAR ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__* LPDWORD ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ REG_NONE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ TRUE ; 

PVOID FUNC4(HANDLE RegHandle, PWCHAR ValueName, LPDWORD RegistryType, LPDWORD Length)
{
    PVOID ReadValue = NULL;
    DWORD Error;

    *Length = 0;
    *RegistryType = REG_NONE;

    while (TRUE)
    {
        Error = FUNC3(RegHandle, ValueName, NULL, RegistryType, ReadValue, Length);
        if (Error == ERROR_SUCCESS)
        {
            if (ReadValue) break;
        }
        else if (Error == ERROR_MORE_DATA)
        {
            FUNC2(FUNC0(), 0, ReadValue);
        }
        else break;
        
        ReadValue = FUNC1(FUNC0(), 0, *Length);
        if (!ReadValue) return NULL;
    }

    if (Error != ERROR_SUCCESS)
    {
        if (ReadValue) FUNC2(FUNC0(), 0, ReadValue);

        *Length = 0;
        *RegistryType = REG_NONE;
        ReadValue = NULL;
    }

    return ReadValue;
}