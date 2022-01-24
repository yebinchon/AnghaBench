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
typedef  int WCHAR ;
typedef  int ULONG ;
typedef  int* PWSTR ;
typedef  int* PULONG ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int UNICODE_NULL ; 
 scalar_t__ FUNC0 (int*,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int*) ; 
 int FUNC4 (int*,int**,int) ; 

__attribute__((used)) static
BOOL
FUNC5(
    PWSTR pszTime,
    PULONG pulJobHour,
    PULONG pulJobMinute)
{
    WCHAR szHour[3], szMinute[3], szAmPm[5];
    PWSTR startPtr, endPtr;
    ULONG ulHour = 0, ulMinute = 0;
    INT nLength;

    if (pszTime == NULL)
        return FALSE;

    startPtr = pszTime;

    /* Extract the hour string */
    nLength = 0;
    while (*startPtr != L'\0' && FUNC1(*startPtr))
    {
        if (nLength >= 2)
            return FALSE;

        szHour[nLength] = *startPtr;
        nLength++;

        startPtr++;
    }
    szHour[nLength] = L'\0';

    /* Check for a valid time separator */
    if (*startPtr != L':')
        return FALSE;

    /* Skip the time separator */
    startPtr++;

    /* Extract the minute string */
    nLength = 0;
    while (*startPtr != L'\0' && FUNC1(*startPtr))
    {
        if (nLength >= 2)
            return FALSE;

        szMinute[nLength] = *startPtr;
        nLength++;

        startPtr++;
    }
    szMinute[nLength] = L'\0';

    /* Extract the optional AM/PM indicator string */
    nLength = 0;
    while (*startPtr != L'\0')
    {
        if (nLength >= 4)
            return FALSE;

        if (!FUNC2(*startPtr))
        {
            szAmPm[nLength] = *startPtr;
            nLength++;
        }

        startPtr++;
    }
    szAmPm[nLength] = L'\0';

    /* Convert the hour string */
    ulHour = FUNC4(szHour, &endPtr, 10);
    if (ulHour == 0 && *endPtr != UNICODE_NULL)
        return FALSE;

    /* Convert the minute string */
    ulMinute = FUNC4(szMinute, &endPtr, 10);
    if (ulMinute == 0 && *endPtr != UNICODE_NULL)
        return FALSE;

    /* Check for valid AM/PM indicator */
    if (FUNC3(szAmPm) > 0 &&
        FUNC0(szAmPm, L"a") != 0 &&
        FUNC0(szAmPm, L"am") != 0 &&
        FUNC0(szAmPm, L"p") != 0 &&
        FUNC0(szAmPm, L"pm") != 0)
        return FALSE;

    /* Check for the valid minute range [0-59] */
    if (ulMinute > 59)
        return FALSE;

    if (FUNC3(szAmPm) > 0)
    {
        /* 12 hour time format */

         /* Check for the valid hour range [1-12] */
        if (ulHour == 0 || ulHour > 12)
            return FALSE;

        /* Convert 12 hour format to 24 hour format */
        if (FUNC0(szAmPm, L"a") == 0 ||
            FUNC0(szAmPm, L"am") == 0)
        {
            if (ulHour == 12)
                ulHour = 0;
        }
        else
        {
            if (ulHour >= 1 && ulHour <= 11)
                ulHour += 12;
        }
    }
    else
    {
        /* 24 hour time format */

        /* Check for the valid hour range [0-23] */
        if (ulHour > 23)
            return FALSE;
    }

    if (pulJobHour != NULL)
        *pulJobHour = ulHour;

    if (pulJobMinute != NULL)
        *pulJobMinute = ulMinute;

    return TRUE;
}