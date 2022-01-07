
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int deinterlace_mode; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum obs_deinterlace_mode { ____Placeholder_obs_deinterlace_mode } obs_deinterlace_mode ;


 int OBS_DEINTERLACE_MODE_DISABLE ;
 scalar_t__ obs_source_valid (TYPE_1__ const*,char*) ;

enum obs_deinterlace_mode
obs_source_get_deinterlace_mode(const obs_source_t *source)
{
 return obs_source_valid(source, "obs_source_set_deinterlace_mode")
         ? source->deinterlace_mode
         : OBS_DEINTERLACE_MODE_DISABLE;
}
