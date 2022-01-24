#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szBuffer ;
typedef  int WCHAR ;
struct TYPE_3__ {int Bias; } ;
typedef  TYPE_1__ TIME_ZONE_INFORMATION ;
typedef  int* PWSTR ;
typedef  int* PDWORD ;
typedef  int* PBYTE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HourBitmap ;
typedef  int /*<<< orphan*/  DayBitmap ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int DAYS_PER_WEEK ; 
 int ERROR_OUTOFMEMORY ; 
 int ERROR_SUCCESS ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_HMODULE ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int HOURS_PER_DAY ; 
 int* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  LANG_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 
 int UNICODE_NULL ; 
 int UNITS_PER_WEEK ; 
 int /*<<< orphan*/  FUNC12 (int*,int) ; 
 int /*<<< orphan*/  hModuleNetMsg ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int*,char*) ; 

__attribute__((used)) static
DWORD
FUNC15(
    PWSTR pszParams,
    PBYTE *ppLogonBitmap,
    PDWORD pdwUnitsPerWeek)
{
    TIME_ZONE_INFORMATION TimeZoneInformation;
    PBYTE pLogonBitmap = NULL;
    DWORD dwError = ERROR_SUCCESS;
    WCHAR szBuffer[32];
    PWSTR ptr1, ptr2;
    WCHAR prevSep, nextSep;
    DWORD dwStartDay, dwEndDay, i, j;
    LONG lStartHour, lEndHour, lBias;
    BYTE DayBitmap;
    BYTE HourBitmap[6];
    LPWSTR ShortDays[7] = {NULL, NULL, NULL, NULL, NULL, NULL, NULL};
    LPWSTR LongDays[7] = {NULL, NULL, NULL, NULL, NULL, NULL, NULL};
    LPWSTR AmPmArray[4] = {NULL, NULL, NULL, NULL};

    FUNC4(&TimeZoneInformation);
    lBias = TimeZoneInformation.Bias / 60;

    pLogonBitmap = FUNC5(FUNC3(),
                             HEAP_ZERO_MEMORY,
                             UNITS_PER_WEEK / 8);
    if (pLogonBitmap == NULL)
        return ERROR_OUTOFMEMORY;

    if (*pszParams == UNICODE_NULL)
    {
        goto done;
    }

    if (FUNC14(pszParams, L"all") == 0)
    {
        FUNC0(pLogonBitmap, UNITS_PER_WEEK / 8, 0xFF);
        goto done;
    }

    for (i = 0; i < 7; i++)
    {
        FUNC1(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                       FORMAT_MESSAGE_FROM_HMODULE |
                       FORMAT_MESSAGE_IGNORE_INSERTS,
                       hModuleNetMsg,
                       4314 + i,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&ShortDays[i],
                       0,
                       NULL);

        FUNC1(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                       FORMAT_MESSAGE_FROM_HMODULE |
                       FORMAT_MESSAGE_IGNORE_INSERTS,
                       hModuleNetMsg,
                       4307 + i,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&LongDays[i],
                       0,
                       NULL);
    }

    for (i = 0; i < 4; i++)
    {
        FUNC1(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                       FORMAT_MESSAGE_FROM_HMODULE |
                       FORMAT_MESSAGE_IGNORE_INSERTS,
                       hModuleNetMsg,
                       4322 + i,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&AmPmArray[i],
                       0,
                       NULL);
    }

    FUNC12(&DayBitmap, sizeof(DayBitmap));
    FUNC12(HourBitmap, sizeof(HourBitmap));

    FUNC12(szBuffer, sizeof(szBuffer));
    ptr1 = pszParams;
    ptr2 = szBuffer;
    prevSep = UNICODE_NULL;
    nextSep = UNICODE_NULL;
    for (;;)
    {
        if (*ptr1 != L'-' && *ptr1 != L',' && *ptr1 != L';' && *ptr1 != UNICODE_NULL)
        {
            *ptr2 = *ptr1;
            ptr2++;
        }
        else
        {
            prevSep = nextSep;
            nextSep = *ptr1;

            if (prevSep != L'-')
            {
                /* Set first value */
                if (FUNC13(szBuffer[0]))
                {
                    /* Parse hour */
                    if (!FUNC10(szBuffer, AmPmArray, &lStartHour))
                    {
                        dwError = 3769;
                        break;
                    }

                    FUNC11(HourBitmap, FUNC8(lStartHour, lBias));
                }
                else
                {
                    /* Parse day */
                    if (!FUNC9(szBuffer, ShortDays, LongDays, &dwStartDay))
                    {
                        dwError = 3768;
                        break;
                    }

                    FUNC11(&DayBitmap, dwStartDay);
                }
            }
            else
            {
                /* Set second value */
                if (FUNC13(szBuffer[0]))
                {
                    /* Parse hour */
                    if (!FUNC10(szBuffer, AmPmArray, &lEndHour))
                    {
                        dwError = 3769;
                        break;
                    }

                    if (lEndHour <= lStartHour)
                        lEndHour += HOURS_PER_DAY;

                    for (i = FUNC8(lStartHour, lBias); i < FUNC8(lEndHour, lBias); i++)
                        FUNC11(HourBitmap, i);
                }
                else
                {
                    /* Parse day */
                    if (!FUNC9(szBuffer, ShortDays, LongDays, &dwEndDay))
                    {
                        dwError = 3768;
                        break;
                    }

                    if (dwEndDay <= dwStartDay)
                        dwEndDay += DAYS_PER_WEEK;

                    for (i = dwStartDay; i <= dwEndDay; i++)
                        FUNC11(&DayBitmap, i % DAYS_PER_WEEK);
                }
            }

            if (*ptr1 == L';' || *ptr1 == UNICODE_NULL)
            {
                /* Fill the logon hour bitmap */
                for (i = 0; i < DAYS_PER_WEEK; i++)
                {
                    if (FUNC2(&DayBitmap, i))
                    {
                        for (j = 0; j < 48; j++)
                        {
                            if (FUNC2(HourBitmap, j))
                                FUNC11(pLogonBitmap, ((i * HOURS_PER_DAY) + j) % UNITS_PER_WEEK);
                        }
                    }
                }

                /* Reset the Bitmaps */
                FUNC12(&DayBitmap, sizeof(DayBitmap));
                FUNC12(HourBitmap, sizeof(HourBitmap));
            }

            if (*ptr1 == UNICODE_NULL)
                break;

            FUNC12(szBuffer, sizeof(szBuffer));
            ptr2 = szBuffer;
        }

        ptr1++;
    }

done:
    for (i = 0; i < 7; i++)
    {
        FUNC7(ShortDays[i]);
        FUNC7(LongDays[i]);
    }

    for (i = 0; i < 4; i++)
    {
        FUNC7(AmPmArray[i]);
    }

    if (dwError == ERROR_SUCCESS)
    {
        *ppLogonBitmap = pLogonBitmap;
        *pdwUnitsPerWeek = UNITS_PER_WEEK;
    }
    else
    {
        if (pLogonBitmap != NULL)
            FUNC6(FUNC3(), 0, pLogonBitmap);
        *ppLogonBitmap = NULL;
        *pdwUnitsPerWeek = 0;
    }

    return dwError;
}