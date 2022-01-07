
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct obs_transform_info {int bounds; int bounds_alignment; int bounds_type; int alignment; int scale; int rot; int pos; } ;
struct TYPE_3__ {int bounds; int bounds_align; int bounds_type; int align; int scale; int rot; int pos; } ;
typedef TYPE_1__ obs_sceneitem_t ;



void obs_sceneitem_get_info(const obs_sceneitem_t *item,
       struct obs_transform_info *info)
{
 if (item && info) {
  info->pos = item->pos;
  info->rot = item->rot;
  info->scale = item->scale;
  info->alignment = item->align;
  info->bounds_type = item->bounds_type;
  info->bounds_alignment = item->bounds_align;
  info->bounds = item->bounds;
 }
}
