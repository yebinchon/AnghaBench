
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int y; int x; } ;
struct vec2 {int y; int x; } ;
struct matrix4 {int dummy; } ;


 int vec3_set (struct vec3*,int ,int ,float) ;
 int vec3_transform (struct vec3*,struct vec3*,struct matrix4*) ;

__attribute__((used)) static inline void transform_val(struct vec2 *v2, struct matrix4 *transform)
{
 struct vec3 v;
 vec3_set(&v, v2->x, v2->y, 0.0f);
 vec3_transform(&v, &v, transform);
 v2->x = v.x;
 v2->y = v.y;
}
