
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct matrix4 {int dummy; } ;
struct TYPE_3__ {int draw_transform; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int matrix4_copy (struct matrix4*,int *) ;

void obs_sceneitem_get_draw_transform(const obs_sceneitem_t *item,
          struct matrix4 *transform)
{
 if (item)
  matrix4_copy(transform, &item->draw_transform);
}
