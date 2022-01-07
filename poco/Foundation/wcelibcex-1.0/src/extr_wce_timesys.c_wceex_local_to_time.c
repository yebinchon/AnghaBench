
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {int wSecond; int wMinute; int wHour; int wDay; scalar_t__ wMonth; scalar_t__ wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;


 scalar_t__ TM_YEAR_BASE ;
 int wceex_local_to_time_r (scalar_t__,scalar_t__,int ,int ,int ,int ) ;

time_t wceex_local_to_time(const SYSTEMTIME *st)
{
    if (st == ((void*)0))
    {
        return (time_t)-1;
    }

    return wceex_local_to_time_r(st->wYear - TM_YEAR_BASE,
                               st->wMonth - 1,
                               st->wDay, st->wHour,
                               st->wMinute,
                               st->wSecond);
}
