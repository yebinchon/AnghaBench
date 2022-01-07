
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int QuadPart; } ;
struct TYPE_6__ {int wYear; int wMonth; int wDay; scalar_t__ wMilliseconds; scalar_t__ wSecond; scalar_t__ wMinute; scalar_t__ wHour; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int LONGLONG ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef scalar_t__ FILETIME ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int FileTimeToSystemTime (scalar_t__*,TYPE_1__*) ;
 int GetLastError () ;
 int SystemSetTime (TYPE_1__*) ;
 int SystemTimeToFileTime (TYPE_1__*,scalar_t__*) ;

__attribute__((used)) static DWORD
UpdateSystemTime(ULONG ulTime)
{
    FILETIME ftNew;
    LARGE_INTEGER li;
    SYSTEMTIME stNew;


    stNew.wYear = 1900;
    stNew.wMonth = 1;
    stNew.wDay = 1;
    stNew.wHour = 0;
    stNew.wMinute = 0;
    stNew.wSecond = 0;
    stNew.wMilliseconds = 0;


    if (!SystemTimeToFileTime(&stNew, &ftNew))
    {
        return GetLastError();
    }


    li = *(LARGE_INTEGER *)&ftNew;
    li.QuadPart += (LONGLONG)10000000 * ulTime;
    ftNew = * (FILETIME *)&li;


    if (!FileTimeToSystemTime(&ftNew, &stNew))
    {
        return GetLastError();
    }

    if (!SystemSetTime(&stNew))
    {
        return GetLastError();
    }

    return ERROR_SUCCESS;
}
