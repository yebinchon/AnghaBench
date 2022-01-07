
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int defer_group_resize; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int obs_ptr_valid (TYPE_1__*,char*) ;
 int os_atomic_inc_long (int *) ;

void obs_sceneitem_defer_group_resize_begin(obs_sceneitem_t *item)
{
 if (!obs_ptr_valid(item, "obs_sceneitem_defer_group_resize_begin"))
  return;

 os_atomic_inc_long(&item->defer_group_resize);
}
