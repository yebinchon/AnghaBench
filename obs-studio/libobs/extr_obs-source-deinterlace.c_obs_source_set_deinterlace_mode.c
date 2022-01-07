
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int deinterlace_mode; int deinterlace_effect; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum obs_deinterlace_mode { ____Placeholder_obs_deinterlace_mode } obs_deinterlace_mode ;


 scalar_t__ OBS_DEINTERLACE_MODE_DISABLE ;
 int disable_deinterlacing (TYPE_1__*) ;
 int enable_deinterlacing (TYPE_1__*,int) ;
 int get_effect (int) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int obs_source_valid (TYPE_1__*,char*) ;

void obs_source_set_deinterlace_mode(obs_source_t *source,
         enum obs_deinterlace_mode mode)
{
 if (!obs_source_valid(source, "obs_source_set_deinterlace_mode"))
  return;
 if (source->deinterlace_mode == mode)
  return;

 if (source->deinterlace_mode == OBS_DEINTERLACE_MODE_DISABLE) {
  enable_deinterlacing(source, mode);
 } else if (mode == OBS_DEINTERLACE_MODE_DISABLE) {
  disable_deinterlacing(source);
 } else {
  obs_enter_graphics();
  source->deinterlace_mode = mode;
  source->deinterlace_effect = get_effect(mode);
  obs_leave_graphics();
 }
}
