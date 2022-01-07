
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int have_zone; int * tz_info; int dst; int zone_type; int z; scalar_t__ tz_abbr; } ;
typedef TYPE_1__ timelib_time ;
struct TYPE_6__ {int dst; int utc_offset; int abbr; } ;
typedef TYPE_2__ timelib_abbr_info ;


 int TIMELIB_ZONETYPE_ABBR ;
 int timelib_free (scalar_t__) ;
 scalar_t__ timelib_strdup (int ) ;

void timelib_set_timezone_from_abbr(timelib_time *t, timelib_abbr_info abbr_info)
{
 if (t->tz_abbr) {
  timelib_free(t->tz_abbr);
 }
 t->tz_abbr = timelib_strdup(abbr_info.abbr);

 t->z = abbr_info.utc_offset;
 t->have_zone = 1;
 t->zone_type = TIMELIB_ZONETYPE_ABBR;
 t->dst = abbr_info.dst;
 t->tz_info = ((void*)0);
}
