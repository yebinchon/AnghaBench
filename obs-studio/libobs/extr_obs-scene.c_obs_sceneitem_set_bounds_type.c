
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bounds_type; } ;
typedef TYPE_1__ obs_sceneitem_t ;
typedef enum obs_bounds_type { ____Placeholder_obs_bounds_type } obs_bounds_type ;


 int do_update_transform (TYPE_1__*) ;

void obs_sceneitem_set_bounds_type(obs_sceneitem_t *item,
       enum obs_bounds_type type)
{
 if (item) {
  item->bounds_type = type;
  do_update_transform(item);
 }
}
