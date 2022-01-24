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
typedef  int /*<<< orphan*/ * PWCHAR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

PWCHAR FUNC5( HANDLE RegHandle, PWCHAR ValueName )
{
    PWCHAR String, TerminatedString;
    DWORD Type, Length;
    
    String = FUNC3(RegHandle, ValueName, &Type, &Length);
    if (!String) return NULL;
    if (Type != REG_SZ)
    {
        FUNC0("Type mismatch for %S (%d != %d)\n", ValueName, Type, REG_SZ);
        //HeapFree(GetProcessHeap(), 0, String);
        //return NULL;
    }
    
    TerminatedString = FUNC4(String, Length);
    FUNC2(FUNC1(), 0, String);
    if (!TerminatedString) return NULL;
    
    return TerminatedString;
}