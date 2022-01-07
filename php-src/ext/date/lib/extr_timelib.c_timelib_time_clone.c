
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tz_info; scalar_t__ tz_abbr; } ;
typedef TYPE_1__ timelib_time ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ timelib_strdup (scalar_t__) ;
 TYPE_1__* timelib_time_ctor () ;

timelib_time* timelib_time_clone(timelib_time *orig)
{
 timelib_time *tmp = timelib_time_ctor();
 memcpy(tmp, orig, sizeof(timelib_time));
 if (orig->tz_abbr) {
  tmp->tz_abbr = timelib_strdup(orig->tz_abbr);
 }
 if (orig->tz_info) {
  tmp->tz_info = orig->tz_info;
 }
 return tmp;
}
