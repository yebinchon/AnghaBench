
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float w; void* z; void* y; void* x; } ;
struct matrix3 {int z; int y; int x; } ;


 int vec3_copy (struct vec3*,struct vec3 const*) ;
 void* vec3_dot (struct vec3*,int *) ;

void vec3_rotate(struct vec3 *dst, const struct vec3 *v,
   const struct matrix3 *m)
{
 struct vec3 temp;
 vec3_copy(&temp, v);

 dst->x = vec3_dot(&temp, &m->x);
 dst->y = vec3_dot(&temp, &m->y);
 dst->z = vec3_dot(&temp, &m->z);
 dst->w = 0.0f;
}
