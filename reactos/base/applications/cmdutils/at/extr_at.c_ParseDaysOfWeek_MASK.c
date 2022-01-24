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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int* PUCHAR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** pszDaysOfWeekArray ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
BOOL
FUNC3(
    PWSTR pszBuffer,
    PUCHAR pucDaysOfWeek)
{
    PWSTR startPtr, endPtr;
    INT nLength, i;

    if (FUNC2(pszBuffer) == 0)
        return FALSE;

    startPtr = pszBuffer;
    endPtr = NULL;
    for (;;)
    {
        endPtr = FUNC1(startPtr, L',');
        if (endPtr == NULL)
            nLength = FUNC2(startPtr);
        else
            nLength = (INT)((ULONG_PTR)endPtr - (ULONG_PTR)startPtr) / sizeof(WCHAR);

        for (i = 0; i < 7; i++)
        {
            if (nLength == FUNC2(pszDaysOfWeekArray[i]) &&
                FUNC0(startPtr, pszDaysOfWeekArray[i], nLength) == 0)
            {
                *pucDaysOfWeek |= (1 << i);
                break;
            }
        }

        if (endPtr == NULL)
            return TRUE;

        startPtr = endPtr + 1;
        endPtr = NULL;
    }

    return FALSE;
}