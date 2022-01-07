
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szBuffer ;
typedef int WCHAR ;
struct TYPE_3__ {int Bias; } ;
typedef TYPE_1__ TIME_ZONE_INFORMATION ;
typedef int* PWSTR ;
typedef int* PDWORD ;
typedef int* PBYTE ;
typedef int * LPWSTR ;
typedef scalar_t__ LONG ;
typedef int HourBitmap ;
typedef int DayBitmap ;
typedef int DWORD ;
typedef int BYTE ;


 int DAYS_PER_WEEK ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FillMemory (int*,int,int) ;
 int FormatMessageW (int,int ,int,int ,int *,int ,int *) ;
 scalar_t__ GetBitValue (int*,int) ;
 int GetProcessHeap () ;
 int GetTimeZoneInformation (TYPE_1__*) ;
 int HEAP_ZERO_MEMORY ;
 int HOURS_PER_DAY ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int LANG_USER_DEFAULT ;
 int LocalFree (int *) ;
 int LocalToGmtHour (scalar_t__,scalar_t__) ;
 int ParseDay (int*,int **,int **,int*) ;
 int ParseHour (int*,int **,scalar_t__*) ;
 int SetBitValue (int*,int) ;
 int UNICODE_NULL ;
 int UNITS_PER_WEEK ;
 int ZeroMemory (int*,int) ;
 int hModuleNetMsg ;
 scalar_t__ iswdigit (int) ;
 scalar_t__ wcsicmp (int*,char*) ;

__attribute__((used)) static
DWORD
ParseLogonHours(
    PWSTR pszParams,
    PBYTE *ppLogonBitmap,
    PDWORD pdwUnitsPerWeek)
{
    TIME_ZONE_INFORMATION TimeZoneInformation;
    PBYTE pLogonBitmap = ((void*)0);
    DWORD dwError = ERROR_SUCCESS;
    WCHAR szBuffer[32];
    PWSTR ptr1, ptr2;
    WCHAR prevSep, nextSep;
    DWORD dwStartDay, dwEndDay, i, j;
    LONG lStartHour, lEndHour, lBias;
    BYTE DayBitmap;
    BYTE HourBitmap[6];
    LPWSTR ShortDays[7] = {((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0)};
    LPWSTR LongDays[7] = {((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0)};
    LPWSTR AmPmArray[4] = {((void*)0), ((void*)0), ((void*)0), ((void*)0)};

    GetTimeZoneInformation(&TimeZoneInformation);
    lBias = TimeZoneInformation.Bias / 60;

    pLogonBitmap = HeapAlloc(GetProcessHeap(),
                             HEAP_ZERO_MEMORY,
                             UNITS_PER_WEEK / 8);
    if (pLogonBitmap == ((void*)0))
        return ERROR_OUTOFMEMORY;

    if (*pszParams == UNICODE_NULL)
    {
        goto done;
    }

    if (wcsicmp(pszParams, L"all") == 0)
    {
        FillMemory(pLogonBitmap, UNITS_PER_WEEK / 8, 0xFF);
        goto done;
    }

    for (i = 0; i < 7; i++)
    {
        FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                       FORMAT_MESSAGE_FROM_HMODULE |
                       FORMAT_MESSAGE_IGNORE_INSERTS,
                       hModuleNetMsg,
                       4314 + i,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&ShortDays[i],
                       0,
                       ((void*)0));

        FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                       FORMAT_MESSAGE_FROM_HMODULE |
                       FORMAT_MESSAGE_IGNORE_INSERTS,
                       hModuleNetMsg,
                       4307 + i,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&LongDays[i],
                       0,
                       ((void*)0));
    }

    for (i = 0; i < 4; i++)
    {
        FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                       FORMAT_MESSAGE_FROM_HMODULE |
                       FORMAT_MESSAGE_IGNORE_INSERTS,
                       hModuleNetMsg,
                       4322 + i,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&AmPmArray[i],
                       0,
                       ((void*)0));
    }

    ZeroMemory(&DayBitmap, sizeof(DayBitmap));
    ZeroMemory(HourBitmap, sizeof(HourBitmap));

    ZeroMemory(szBuffer, sizeof(szBuffer));
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

                if (iswdigit(szBuffer[0]))
                {

                    if (!ParseHour(szBuffer, AmPmArray, &lStartHour))
                    {
                        dwError = 3769;
                        break;
                    }

                    SetBitValue(HourBitmap, LocalToGmtHour(lStartHour, lBias));
                }
                else
                {

                    if (!ParseDay(szBuffer, ShortDays, LongDays, &dwStartDay))
                    {
                        dwError = 3768;
                        break;
                    }

                    SetBitValue(&DayBitmap, dwStartDay);
                }
            }
            else
            {

                if (iswdigit(szBuffer[0]))
                {

                    if (!ParseHour(szBuffer, AmPmArray, &lEndHour))
                    {
                        dwError = 3769;
                        break;
                    }

                    if (lEndHour <= lStartHour)
                        lEndHour += HOURS_PER_DAY;

                    for (i = LocalToGmtHour(lStartHour, lBias); i < LocalToGmtHour(lEndHour, lBias); i++)
                        SetBitValue(HourBitmap, i);
                }
                else
                {

                    if (!ParseDay(szBuffer, ShortDays, LongDays, &dwEndDay))
                    {
                        dwError = 3768;
                        break;
                    }

                    if (dwEndDay <= dwStartDay)
                        dwEndDay += DAYS_PER_WEEK;

                    for (i = dwStartDay; i <= dwEndDay; i++)
                        SetBitValue(&DayBitmap, i % DAYS_PER_WEEK);
                }
            }

            if (*ptr1 == L';' || *ptr1 == UNICODE_NULL)
            {

                for (i = 0; i < DAYS_PER_WEEK; i++)
                {
                    if (GetBitValue(&DayBitmap, i))
                    {
                        for (j = 0; j < 48; j++)
                        {
                            if (GetBitValue(HourBitmap, j))
                                SetBitValue(pLogonBitmap, ((i * HOURS_PER_DAY) + j) % UNITS_PER_WEEK);
                        }
                    }
                }


                ZeroMemory(&DayBitmap, sizeof(DayBitmap));
                ZeroMemory(HourBitmap, sizeof(HourBitmap));
            }

            if (*ptr1 == UNICODE_NULL)
                break;

            ZeroMemory(szBuffer, sizeof(szBuffer));
            ptr2 = szBuffer;
        }

        ptr1++;
    }

done:
    for (i = 0; i < 7; i++)
    {
        LocalFree(ShortDays[i]);
        LocalFree(LongDays[i]);
    }

    for (i = 0; i < 4; i++)
    {
        LocalFree(AmPmArray[i]);
    }

    if (dwError == ERROR_SUCCESS)
    {
        *ppLogonBitmap = pLogonBitmap;
        *pdwUnitsPerWeek = UNITS_PER_WEEK;
    }
    else
    {
        if (pLogonBitmap != ((void*)0))
            HeapFree(GetProcessHeap(), 0, pLogonBitmap);
        *ppLogonBitmap = ((void*)0);
        *pdwUnitsPerWeek = 0;
    }

    return dwError;
}
