
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vec2 {int dummy; } ;
struct TYPE_3__ {int pos; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int vec2_copy (struct vec2*,int *) ;

void obs_sceneitem_get_pos(const obs_sceneitem_t *item, struct vec2 *pos)
{
 if (item)
  vec2_copy(pos, &item->pos);
}
