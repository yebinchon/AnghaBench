
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwLowDateTime; scalar_t__ dwHighDateTime; } ;
typedef int LONGLONG ;
typedef TYPE_1__ FILETIME ;


 int GetSystemTimeAsFileTime (TYPE_1__*) ;
 double TIME_EPOCH ;

__attribute__((used)) static double date_now(void)
{
    FILETIME ftime;
    LONGLONG time;

    GetSystemTimeAsFileTime(&ftime);
    time = ((LONGLONG)ftime.dwHighDateTime << 32) + ftime.dwLowDateTime;

    return time/10000 - TIME_EPOCH;
}
