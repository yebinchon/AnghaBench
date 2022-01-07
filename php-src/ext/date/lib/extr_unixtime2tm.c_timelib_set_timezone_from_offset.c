
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int have_zone; int * tz_info; scalar_t__ dst; int zone_type; int z; int * tz_abbr; } ;
typedef TYPE_1__ timelib_time ;
typedef int timelib_sll ;


 int TIMELIB_ZONETYPE_OFFSET ;
 int timelib_free (int *) ;

void timelib_set_timezone_from_offset(timelib_time *t, timelib_sll utc_offset)
{
 if (t->tz_abbr) {
  timelib_free(t->tz_abbr);
 }
 t->tz_abbr = ((void*)0);

 t->z = utc_offset;
 t->have_zone = 1;
 t->zone_type = TIMELIB_ZONETYPE_OFFSET;
 t->dst = 0;
 t->tz_info = ((void*)0);
}
