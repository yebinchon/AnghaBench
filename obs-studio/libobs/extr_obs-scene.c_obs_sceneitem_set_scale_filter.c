
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scale_filter; int update_transform; } ;
typedef TYPE_1__ obs_sceneitem_t ;
typedef enum obs_scale_type { ____Placeholder_obs_scale_type } obs_scale_type ;


 int obs_ptr_valid (TYPE_1__*,char*) ;
 int os_atomic_set_bool (int *,int) ;

void obs_sceneitem_set_scale_filter(obs_sceneitem_t *item,
        enum obs_scale_type filter)
{
 if (!obs_ptr_valid(item, "obs_sceneitem_set_scale_filter"))
  return;

 item->scale_filter = filter;

 os_atomic_set_bool(&item->update_transform, 1);
}
