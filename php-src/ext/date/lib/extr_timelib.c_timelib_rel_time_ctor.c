
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_rel_time ;


 int * timelib_calloc (int,int) ;

timelib_rel_time* timelib_rel_time_ctor(void)
{
 timelib_rel_time *t;
 t = timelib_calloc(1, sizeof(timelib_rel_time));

 return t;
}
