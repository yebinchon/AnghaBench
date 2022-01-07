
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int timelib_tzinfo ;
struct TYPE_6__ {int abbr; int is_dst; int offset; } ;
typedef TYPE_1__ timelib_time_offset ;
struct TYPE_7__ {int have_zone; int zone_type; int tz_abbr; int * tz_info; int dst; int z; int sse; } ;
typedef TYPE_2__ timelib_time ;


 int TIMELIB_ZONETYPE_ID ;
 int timelib_free (int ) ;
 TYPE_1__* timelib_get_time_zone_info (int ,int *) ;
 int timelib_strdup (int ) ;
 int timelib_time_offset_dtor (TYPE_1__*) ;

void timelib_set_timezone(timelib_time *t, timelib_tzinfo *tz)
{
 timelib_time_offset *gmt_offset;

 gmt_offset = timelib_get_time_zone_info(t->sse, tz);
 t->z = gmt_offset->offset;






 t->dst = gmt_offset->is_dst;
 t->tz_info = tz;
 if (t->tz_abbr) {
  timelib_free(t->tz_abbr);
 }
 t->tz_abbr = timelib_strdup(gmt_offset->abbr);
 timelib_time_offset_dtor(gmt_offset);

 t->have_zone = 1;
 t->zone_type = TIMELIB_ZONETYPE_ID;
}
