
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* tz_abbr; } ;
typedef TYPE_1__ timelib_time ;


 int TIMELIB_TIME_FREE (TYPE_1__*) ;

void timelib_time_dtor(timelib_time* t)
{
 TIMELIB_TIME_FREE(t->tz_abbr);
 TIMELIB_TIME_FREE(t);
}
