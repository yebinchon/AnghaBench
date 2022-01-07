
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int SYSTEMTIME ;
typedef int LPWSTR ;
typedef int LPFILETIME ;
typedef int FILETIME ;
typedef int BOOL ;


 int DATE_LONGDATE ;
 int FALSE ;
 int FileTimeToLocalFileTime (int ,int *) ;
 int FileTimeToSystemTime (int *,int *) ;
 int GetDateFormatW (int ,int ,int *,int *,int,scalar_t__) ;
 int GetTimeFormatW (int ,int ,int *,int *,int,scalar_t__) ;
 int LOCALE_USER_DEFAULT ;
 int StringCchCopyExW (int,scalar_t__,char*,int*,size_t*,int ) ;
 int TRUE ;

BOOL
GetFileTimeString(LPFILETIME lpFileTime, LPWSTR pwszResult, UINT cchResult)
{
    FILETIME ft;
    SYSTEMTIME st;
    int cchWritten;
    UINT cchRemaining = cchResult;
    size_t cchCopyRemaining;
    LPWSTR pwszEnd = pwszResult;

    if (!FileTimeToLocalFileTime(lpFileTime, &ft) || !FileTimeToSystemTime(&ft, &st))
        return FALSE;

    cchWritten = GetDateFormatW(LOCALE_USER_DEFAULT, DATE_LONGDATE, &st, ((void*)0), pwszEnd, cchRemaining);
    if (cchWritten)
        --cchWritten;



    cchRemaining -= cchWritten;
    pwszEnd += cchWritten;

    StringCchCopyExW(pwszEnd, cchRemaining, L", ", &pwszEnd, &cchCopyRemaining, 0);
    cchRemaining = (UINT)cchCopyRemaining;

    cchWritten = GetTimeFormatW(LOCALE_USER_DEFAULT, 0, &st, ((void*)0), pwszEnd, cchRemaining);
    if (cchWritten)
        --cchWritten;



    return TRUE;
}
