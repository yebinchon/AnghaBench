
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONG ;
typedef int* PWSTR ;
typedef int* PULONG ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int UNICODE_NULL ;
 scalar_t__ _wcsicmp (int*,char*) ;
 scalar_t__ iswdigit (int) ;
 int iswspace (int) ;
 scalar_t__ wcslen (int*) ;
 int wcstoul (int*,int**,int) ;

__attribute__((used)) static
BOOL
ParseTime(
    PWSTR pszTime,
    PULONG pulJobHour,
    PULONG pulJobMinute)
{
    WCHAR szHour[3], szMinute[3], szAmPm[5];
    PWSTR startPtr, endPtr;
    ULONG ulHour = 0, ulMinute = 0;
    INT nLength;

    if (pszTime == ((void*)0))
        return FALSE;

    startPtr = pszTime;


    nLength = 0;
    while (*startPtr != L'\0' && iswdigit(*startPtr))
    {
        if (nLength >= 2)
            return FALSE;

        szHour[nLength] = *startPtr;
        nLength++;

        startPtr++;
    }
    szHour[nLength] = L'\0';


    if (*startPtr != L':')
        return FALSE;


    startPtr++;


    nLength = 0;
    while (*startPtr != L'\0' && iswdigit(*startPtr))
    {
        if (nLength >= 2)
            return FALSE;

        szMinute[nLength] = *startPtr;
        nLength++;

        startPtr++;
    }
    szMinute[nLength] = L'\0';


    nLength = 0;
    while (*startPtr != L'\0')
    {
        if (nLength >= 4)
            return FALSE;

        if (!iswspace(*startPtr))
        {
            szAmPm[nLength] = *startPtr;
            nLength++;
        }

        startPtr++;
    }
    szAmPm[nLength] = L'\0';


    ulHour = wcstoul(szHour, &endPtr, 10);
    if (ulHour == 0 && *endPtr != UNICODE_NULL)
        return FALSE;


    ulMinute = wcstoul(szMinute, &endPtr, 10);
    if (ulMinute == 0 && *endPtr != UNICODE_NULL)
        return FALSE;


    if (wcslen(szAmPm) > 0 &&
        _wcsicmp(szAmPm, L"a") != 0 &&
        _wcsicmp(szAmPm, L"am") != 0 &&
        _wcsicmp(szAmPm, L"p") != 0 &&
        _wcsicmp(szAmPm, L"pm") != 0)
        return FALSE;


    if (ulMinute > 59)
        return FALSE;

    if (wcslen(szAmPm) > 0)
    {



        if (ulHour == 0 || ulHour > 12)
            return FALSE;


        if (_wcsicmp(szAmPm, L"a") == 0 ||
            _wcsicmp(szAmPm, L"am") == 0)
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



        if (ulHour > 23)
            return FALSE;
    }

    if (pulJobHour != ((void*)0))
        *pulJobHour = ulHour;

    if (pulJobMinute != ((void*)0))
        *pulJobMinute = ulMinute;

    return TRUE;
}
