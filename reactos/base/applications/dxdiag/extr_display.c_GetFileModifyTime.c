
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int TIME_ZONE_INFORMATION ;
typedef int SYSTEMTIME ;
typedef int LPCWSTR ;
typedef int HANDLE ;
typedef int FILETIME ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int DATE_SHORTDATE ;
 int FALSE ;
 int FileTimeToSystemTime (int *,int *) ;
 int GENERIC_READ ;
 int GetDateFormatW (int ,int ,int *,int *,int*,int) ;
 int GetFileTime (int ,int *,int *,int *) ;
 int GetTimeFormatW (int ,int ,int *,int *,int*,int) ;
 int GetTimeZoneInformation (int *) ;
 int LOCALE_USER_DEFAULT ;
 int OPEN_EXISTING ;
 int SystemTimeToTzSpecificLocalTime (int *,int *,int *) ;
 int TIME_FORCE24HOURFORMAT ;

BOOL
GetFileModifyTime(LPCWSTR pFullPath, WCHAR * szTime, int szTimeSize)
{
    HANDLE hFile;
    FILETIME AccessTime;
    SYSTEMTIME SysTime, LocalTime;
    UINT Length;
    TIME_ZONE_INFORMATION TimeInfo;

    hFile = CreateFileW(pFullPath, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (!hFile)
        return FALSE;

    if (!GetFileTime(hFile, ((void*)0), ((void*)0), &AccessTime))
    {
        CloseHandle(hFile);
        return FALSE;
    }
    CloseHandle(hFile);

    if(!GetTimeZoneInformation(&TimeInfo))
        return FALSE;

    if (!FileTimeToSystemTime(&AccessTime, &SysTime))
        return FALSE;

    if (!SystemTimeToTzSpecificLocalTime(&TimeInfo, &SysTime, &LocalTime))
        return FALSE;

    Length = GetDateFormatW(LOCALE_USER_DEFAULT, DATE_SHORTDATE, &LocalTime, ((void*)0), szTime, szTimeSize);
    szTime[Length-1] = L' ';
    return GetTimeFormatW(LOCALE_USER_DEFAULT, TIME_FORCE24HOURFORMAT, &LocalTime, ((void*)0), &szTime[Length], szTimeSize-Length);
}
