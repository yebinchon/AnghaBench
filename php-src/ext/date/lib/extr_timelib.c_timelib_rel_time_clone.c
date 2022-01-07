
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_rel_time ;


 int memcpy (int *,int *,int) ;
 int * timelib_rel_time_ctor () ;

timelib_rel_time* timelib_rel_time_clone(timelib_rel_time *rel)
{
 timelib_rel_time *tmp = timelib_rel_time_ctor();
 memcpy(tmp, rel, sizeof(timelib_rel_time));
 return tmp;
}
