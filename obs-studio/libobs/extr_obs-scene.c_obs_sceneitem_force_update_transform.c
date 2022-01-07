
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int update_transform; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 scalar_t__ os_atomic_set_bool (int *,int) ;
 int update_item_transform (TYPE_1__*,int) ;

void obs_sceneitem_force_update_transform(obs_sceneitem_t *item)
{
 if (!item)
  return;

 if (os_atomic_set_bool(&item->update_transform, 0))
  update_item_transform(item, 0);
}
