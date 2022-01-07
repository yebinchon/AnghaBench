
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* tz_abbr; int sse_uptodate; } ;
typedef TYPE_1__ timelib_time ;


 int timelib_update_ts (TYPE_1__*,int *) ;

char *timelib_get_tz_abbr_ptr(timelib_time *t)
{
 if (!t->sse_uptodate) {
  timelib_update_ts(t, ((void*)0));
 };
 return t->tz_abbr;
}
