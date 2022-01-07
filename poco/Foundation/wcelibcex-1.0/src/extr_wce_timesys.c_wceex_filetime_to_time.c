
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_6__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ FILETIME ;


 int FileTimeToLocalFileTime (TYPE_1__ const*,TYPE_1__*) ;
 int FileTimeToSystemTime (TYPE_1__*,int *) ;
 int wceex_local_to_time (int *) ;

time_t wceex_filetime_to_time(const FILETIME * pft)
{
    SYSTEMTIME st;
    FILETIME lft;



    if (!pft->dwLowDateTime && !pft->dwHighDateTime)
    {
        return (time_t)-1;
    }


    if (!FileTimeToLocalFileTime(pft, &lft) ||
        !FileTimeToSystemTime(&lft, &st))
    {
        return (time_t)-1;
    }

    return wceex_local_to_time(&st);
}
