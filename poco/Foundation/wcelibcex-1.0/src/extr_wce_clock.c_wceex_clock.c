
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clock_t ;
typedef int __int64 ;
typedef int SYSTEMTIME ;
typedef int FILETIME ;


 int GetSystemTime (int *) ;
 scalar_t__ SystemTimeToFileTime (int *,int *) ;

clock_t wceex_clock()
{
    __int64 ticks;
    SYSTEMTIME stCurrent;
    FILETIME ftCurrent;

    GetSystemTime(&stCurrent);

    if (SystemTimeToFileTime(&stCurrent, &ftCurrent))
    {
        ticks = *(__int64*)&ftCurrent;
    }
    else
    {



        ticks = -1;
    }

   return (clock_t)ticks;
}
