
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vec4 {int dummy; } ;
struct matrix4 {struct vec4 y; struct vec4 x; struct vec4 t; struct vec4 z; } ;
struct TYPE_6__ {float x; float y; } ;
struct TYPE_7__ {scalar_t__ rot; TYPE_1__ scale; int pos; int draw_transform; } ;
typedef TYPE_2__ obs_sceneitem_t ;


 int matrix4_inv (struct matrix4*,int *) ;
 int matrix4_mul (struct matrix4*,struct matrix4*,struct matrix4*) ;
 int transform_val (int *,struct matrix4*) ;
 int update_item_transform (TYPE_2__*,int) ;
 float vec4_len (struct vec4*) ;
 int vec4_set (struct vec4*,float,float,float,float) ;

__attribute__((used)) static void apply_group_transform(obs_sceneitem_t *item, obs_sceneitem_t *group)
{
 struct matrix4 transform;
 struct matrix4 mat;
 struct vec4 x_base;

 vec4_set(&x_base, 1.0f, 0.0f, 0.0f, 0.0f);

 matrix4_inv(&transform, &group->draw_transform);

 transform_val(&item->pos, &transform);
 vec4_set(&transform.t, 0.0f, 0.0f, 0.0f, 1.0f);

 vec4_set(&mat.x, item->scale.x, 0.0f, 0.0f, 0.0f);
 vec4_set(&mat.y, 0.0f, item->scale.y, 0.0f, 0.0f);
 vec4_set(&mat.z, 0.0f, 0.0f, 1.0f, 0.0f);
 vec4_set(&mat.t, 0.0f, 0.0f, 0.0f, 1.0f);
 matrix4_mul(&mat, &mat, &transform);

 item->scale.x =
  vec4_len(&mat.x) * (item->scale.x > 0.0f ? 1.0f : -1.0f);
 item->scale.y =
  vec4_len(&mat.y) * (item->scale.y > 0.0f ? 1.0f : -1.0f);
 item->rot -= group->rot;

 update_item_transform(item, 0);
}
