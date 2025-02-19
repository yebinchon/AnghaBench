
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int timelib_tzinfo ;
struct TYPE_7__ {int offset; int transition_time; int is_dst; int abbr; } ;
typedef TYPE_1__ timelib_time_offset ;
struct TYPE_8__ {int zone_type; int is_localtime; int z; int dst; int sse; int tz_abbr; int * tz_info; } ;
typedef TYPE_2__ timelib_time ;
typedef int timelib_sll ;





 int timelib_free (int ) ;
 TYPE_1__* timelib_get_time_zone_info (int,int *) ;
 int timelib_set_timezone (TYPE_2__*,int *) ;
 int timelib_strdup (int ) ;
 int timelib_time_offset_dtor (TYPE_1__*) ;

__attribute__((used)) static timelib_sll do_adjust_timezone(timelib_time *tz, timelib_tzinfo *tzi)
{
 switch (tz->zone_type) {
  case 128:

   tz->is_localtime = 1;
   return -tz->z;
   break;

  case 130: {
   timelib_sll tmp;

   tz->is_localtime = 1;
   tmp = -tz->z;
   tmp -= tz->dst * 3600;
   return tmp;
   }
   break;

  case 129:
   tzi = tz->tz_info;


  default:

   if (tzi) {
    timelib_time_offset *before, *after;
    timelib_sll tmp;
    int in_transition;

    tz->is_localtime = 1;
    before = timelib_get_time_zone_info(tz->sse, tzi);
    after = timelib_get_time_zone_info(tz->sse - before->offset, tzi);
    timelib_set_timezone(tz, tzi);

    in_transition = (
     ((tz->sse - after->offset) >= (after->transition_time + (before->offset - after->offset))) &&
     ((tz->sse - after->offset) < after->transition_time)
    );

    if ((before->offset != after->offset) && !in_transition) {
     tmp = -after->offset;
    } else {
     tmp = -tz->z;
    }
    timelib_time_offset_dtor(before);
    timelib_time_offset_dtor(after);

    {
     timelib_time_offset *gmt_offset;

     gmt_offset = timelib_get_time_zone_info(tz->sse + tmp, tzi);
     tz->z = gmt_offset->offset;

     tz->dst = gmt_offset->is_dst;
     if (tz->tz_abbr) {
      timelib_free(tz->tz_abbr);
     }
     tz->tz_abbr = timelib_strdup(gmt_offset->abbr);
     timelib_time_offset_dtor(gmt_offset);
    }
    return tmp;
   }
 }
 return 0;
}
