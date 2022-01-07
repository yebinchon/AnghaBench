
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* abbr; } ;
typedef TYPE_1__ timelib_time_offset ;


 int TIMELIB_TIME_FREE (TYPE_1__*) ;

void timelib_time_offset_dtor(timelib_time_offset* t)
{
 TIMELIB_TIME_FREE(t->abbr);
 TIMELIB_TIME_FREE(t);
}
