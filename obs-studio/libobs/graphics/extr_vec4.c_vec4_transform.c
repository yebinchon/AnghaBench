
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {void* w; void* z; void* y; void* x; } ;
struct matrix4 {int t; int z; int y; int x; } ;


 int matrix4_transpose (struct matrix4*,struct matrix4 const*) ;
 int vec4_copy (struct vec4*,struct vec4*) ;
 void* vec4_dot (int *,struct vec4 const*) ;

void vec4_transform(struct vec4 *dst, const struct vec4 *v,
      const struct matrix4 *m)
{
 struct vec4 temp;
 struct matrix4 transpose;

 matrix4_transpose(&transpose, m);

 temp.x = vec4_dot(&transpose.x, v);
 temp.y = vec4_dot(&transpose.y, v);
 temp.z = vec4_dot(&transpose.z, v);
 temp.w = vec4_dot(&transpose.t, v);

 vec4_copy(dst, &temp);
}
