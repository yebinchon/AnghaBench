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
typedef  int ULONG ;
typedef  scalar_t__* PWSTR ;
typedef  int* PULONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ UNICODE_NULL ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int FUNC1 (scalar_t__*,scalar_t__**,int) ; 

__attribute__((used)) static
BOOL
FUNC2(
    PWSTR pszBuffer,
    PULONG pulDaysOfMonth)
{
    PWSTR startPtr, endPtr;
    ULONG ulValue;

    if (FUNC0(pszBuffer) == 0)
        return FALSE;

    startPtr = pszBuffer;
    endPtr = NULL;
    for (;;)
    {
        ulValue = FUNC1(startPtr, &endPtr, 10);
        if (ulValue == 0)
            return FALSE;

        if (ulValue > 0 && ulValue <= 31)
            *pulDaysOfMonth |= (1 << (ulValue - 1));

        if (endPtr != NULL && *endPtr == UNICODE_NULL)
            return TRUE;

        startPtr = endPtr + 1;
        endPtr = NULL;
    }

    return FALSE;
}