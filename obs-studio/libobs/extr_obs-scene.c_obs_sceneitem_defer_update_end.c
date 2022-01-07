
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int defer_update; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int do_update_transform (TYPE_1__*) ;
 int obs_ptr_valid (TYPE_1__*,char*) ;
 scalar_t__ os_atomic_dec_long (int *) ;

void obs_sceneitem_defer_update_end(obs_sceneitem_t *item)
{
 if (!obs_ptr_valid(item, "obs_sceneitem_defer_update_end"))
  return;

 if (os_atomic_dec_long(&item->defer_update) == 0)
  do_update_transform(item);
}
