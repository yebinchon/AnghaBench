
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float rot; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int do_update_transform (TYPE_1__*) ;

void obs_sceneitem_set_rot(obs_sceneitem_t *item, float rot)
{
 if (item) {
  item->rot = rot;
  do_update_transform(item);
 }
}
