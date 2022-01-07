
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rot; int scale; int pos; int * parent; } ;
typedef TYPE_1__ obs_sceneitem_t ;
typedef int obs_scene_t ;


 int get_ungrouped_transform (TYPE_1__*,int *,int *,int *) ;
 int update_item_transform (TYPE_1__*,int) ;

__attribute__((used)) static void remove_group_transform(obs_sceneitem_t *group,
       obs_sceneitem_t *item)
{
 obs_scene_t *parent = item->parent;
 if (!parent || !group)
  return;

 get_ungrouped_transform(group, &item->pos, &item->scale, &item->rot);

 update_item_transform(item, 0);
}
