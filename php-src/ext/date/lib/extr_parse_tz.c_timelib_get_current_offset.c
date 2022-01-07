
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int offset; } ;
typedef TYPE_1__ timelib_time_offset ;
struct TYPE_7__ {int zone_type; int dst; int tz_info; int sse; int z; } ;
typedef TYPE_2__ timelib_time ;
typedef int timelib_sll ;





 TYPE_1__* timelib_get_time_zone_info (int ,int ) ;
 int timelib_time_offset_dtor (TYPE_1__*) ;

timelib_sll timelib_get_current_offset(timelib_time *t)
{
 timelib_time_offset *gmt_offset;
 timelib_sll retval;

 switch (t->zone_type) {
  case 130:
  case 128:
   return t->z + (t->dst * 3600);

  case 129:
   gmt_offset = timelib_get_time_zone_info(t->sse, t->tz_info);
   retval = gmt_offset->offset;
   timelib_time_offset_dtor(gmt_offset);
   return retval;

  default:
   return 0;
 }
}
