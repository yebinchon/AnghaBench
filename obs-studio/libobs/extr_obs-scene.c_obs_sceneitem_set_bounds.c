
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vec2 {int dummy; } ;
struct TYPE_4__ {struct vec2 bounds; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int do_update_transform (TYPE_1__*) ;

void obs_sceneitem_set_bounds(obs_sceneitem_t *item, const struct vec2 *bounds)
{
 if (item) {
  item->bounds = *bounds;
  do_update_transform(item);
 }
}
