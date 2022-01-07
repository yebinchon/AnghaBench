
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_7__ {scalar_t__ Year; int Month; int Day; } ;
struct TYPE_6__ {int Hour; int Minute; int Second; } ;
struct TYPE_5__ {scalar_t__ wYear; int wMonth; int wDay; int wHour; int wMinute; int wSecond; scalar_t__ wMilliseconds; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef TYPE_2__* PDOSTIME ;
typedef TYPE_3__* PDOSDATE ;
typedef int * LPFILETIME ;
typedef int BOOL ;


 int ConvertSystemTimeToFileTime (TYPE_1__*,int *) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL
ConvertDosDateTimeToFileTime(WORD wFatDate,
                             WORD wFatTime,
                             LPFILETIME lpFileTime)
{
    PDOSTIME pdtime = (PDOSTIME)&wFatTime;
    PDOSDATE pddate = (PDOSDATE)&wFatDate;
    SYSTEMTIME SystemTime;

    if (lpFileTime == ((void*)0))
        return FALSE;

    SystemTime.wMilliseconds = 0;
    SystemTime.wSecond = pdtime->Second;
    SystemTime.wMinute = pdtime->Minute;
    SystemTime.wHour = pdtime->Hour;

    SystemTime.wDay = pddate->Day;
    SystemTime.wMonth = pddate->Month;
    SystemTime.wYear = 1980 + pddate->Year;

    ConvertSystemTimeToFileTime(&SystemTime, lpFileTime);

    return TRUE;
}
