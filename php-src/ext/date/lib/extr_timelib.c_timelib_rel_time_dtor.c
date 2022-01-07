
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_rel_time ;


 int TIMELIB_TIME_FREE (int *) ;

void timelib_rel_time_dtor(timelib_rel_time* t)
{
 TIMELIB_TIME_FREE(t);
}
