
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int os_atomic_inc_long (int *) ;

void obs_sceneitem_addref(obs_sceneitem_t *item)
{
 if (item)
  os_atomic_inc_long(&item->ref);
}
