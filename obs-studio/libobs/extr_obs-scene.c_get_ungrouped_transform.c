
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vec4 {int dummy; } ;
struct vec2 {float x; float y; } ;
struct matrix4 {struct vec4 y; struct vec4 x; struct vec4 t; struct vec4 z; } ;
struct TYPE_3__ {scalar_t__ rot; int draw_transform; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int matrix4_copy (struct matrix4*,int *) ;
 int matrix4_mul (struct matrix4*,struct matrix4*,struct matrix4*) ;
 int transform_val (struct vec2*,struct matrix4*) ;
 float vec4_len (struct vec4*) ;
 int vec4_set (struct vec4*,float,float,float,float) ;

__attribute__((used)) static void get_ungrouped_transform(obs_sceneitem_t *group, struct vec2 *pos,
        struct vec2 *scale, float *rot)
{
 struct matrix4 transform;
 struct matrix4 mat;
 struct vec4 x_base;

 vec4_set(&x_base, 1.0f, 0.0f, 0.0f, 0.0f);

 matrix4_copy(&transform, &group->draw_transform);

 transform_val(pos, &transform);
 vec4_set(&transform.t, 0.0f, 0.0f, 0.0f, 1.0f);

 vec4_set(&mat.x, scale->x, 0.0f, 0.0f, 0.0f);
 vec4_set(&mat.y, 0.0f, scale->y, 0.0f, 0.0f);
 vec4_set(&mat.z, 0.0f, 0.0f, 1.0f, 0.0f);
 vec4_set(&mat.t, 0.0f, 0.0f, 0.0f, 1.0f);
 matrix4_mul(&mat, &mat, &transform);

 scale->x = vec4_len(&mat.x) * (scale->x > 0.0f ? 1.0f : -1.0f);
 scale->y = vec4_len(&mat.y) * (scale->y > 0.0f ? 1.0f : -1.0f);
 *rot += group->rot;
}
