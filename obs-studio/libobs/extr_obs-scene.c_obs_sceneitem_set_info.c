
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct obs_transform_info {int bounds; int bounds_alignment; int bounds_type; int alignment; int scale; int rot; int pos; } ;
struct TYPE_4__ {int bounds; int bounds_align; int bounds_type; int align; int scale; int rot; int pos; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int do_update_transform (TYPE_1__*) ;

void obs_sceneitem_set_info(obs_sceneitem_t *item,
       const struct obs_transform_info *info)
{
 if (item && info) {
  item->pos = info->pos;
  item->rot = info->rot;
  item->scale = info->scale;
  item->align = info->alignment;
  item->bounds_type = info->bounds_type;
  item->bounds_align = info->bounds_alignment;
  item->bounds = info->bounds;
  do_update_transform(item);
 }
}
