
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scale_filter; } ;
typedef TYPE_1__ obs_sceneitem_t ;
typedef enum obs_scale_type { ____Placeholder_obs_scale_type } obs_scale_type ;


 int OBS_SCALE_DISABLE ;
 scalar_t__ obs_ptr_valid (TYPE_1__*,char*) ;

enum obs_scale_type obs_sceneitem_get_scale_filter(obs_sceneitem_t *item)
{
 return obs_ptr_valid(item, "obs_sceneitem_get_scale_filter")
         ? item->scale_filter
         : OBS_SCALE_DISABLE;
}
