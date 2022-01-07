
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vec2 {int dummy; } ;
struct TYPE_4__ {int scale; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int do_update_transform (TYPE_1__*) ;
 int vec2_copy (int *,struct vec2 const*) ;

void obs_sceneitem_set_scale(obs_sceneitem_t *item, const struct vec2 *scale)
{
 if (item) {
  vec2_copy(&item->scale, scale);
  do_update_transform(item);
 }
}
