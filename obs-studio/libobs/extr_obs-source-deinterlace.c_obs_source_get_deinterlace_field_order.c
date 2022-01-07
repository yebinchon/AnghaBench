
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ deinterlace_top_first; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum obs_deinterlace_field_order { ____Placeholder_obs_deinterlace_field_order } obs_deinterlace_field_order ;


 int OBS_DEINTERLACE_FIELD_ORDER_BOTTOM ;
 int OBS_DEINTERLACE_FIELD_ORDER_TOP ;
 int obs_source_valid (TYPE_1__ const*,char*) ;

enum obs_deinterlace_field_order
obs_source_get_deinterlace_field_order(const obs_source_t *source)
{
 if (!obs_source_valid(source, "obs_source_set_deinterlace_field_order"))
  return OBS_DEINTERLACE_FIELD_ORDER_TOP;

 return source->deinterlace_top_first
         ? OBS_DEINTERLACE_FIELD_ORDER_TOP
         : OBS_DEINTERLACE_FIELD_ORDER_BOTTOM;
}
