
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int update_group_resize; int defer_group_resize; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int obs_ptr_valid (TYPE_1__*,char*) ;
 scalar_t__ os_atomic_dec_long (int *) ;
 int os_atomic_set_bool (int *,int) ;

void obs_sceneitem_defer_group_resize_end(obs_sceneitem_t *item)
{
 if (!obs_ptr_valid(item, "obs_sceneitem_defer_group_resize_end"))
  return;

 if (os_atomic_dec_long(&item->defer_group_resize) == 0)
  os_atomic_set_bool(&item->update_group_resize, 1);
}
