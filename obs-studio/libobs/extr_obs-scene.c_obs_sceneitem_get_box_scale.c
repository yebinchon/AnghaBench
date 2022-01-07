
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vec2 {int dummy; } ;
struct TYPE_3__ {struct vec2 box_scale; } ;
typedef TYPE_1__ obs_sceneitem_t ;



void obs_sceneitem_get_box_scale(const obs_sceneitem_t *item,
     struct vec2 *scale)
{
 if (item)
  *scale = item->box_scale;
}
