
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int z; int y; int x; } ;


 int EPSILON ;
 int asinf (int) ;
 int atan2f (int ,int) ;
 scalar_t__ close_float (int,float,int ) ;
 int vec3_copy (struct vec3*,struct vec3*) ;
 int vec3_len (struct vec3 const*) ;
 int vec3_zero (struct vec3*) ;

void cart_to_polar(struct vec3 *dst, const struct vec3 *v)
{
 struct vec3 polar;
 polar.z = vec3_len(v);

 if (close_float(polar.z, 0.0f, EPSILON)) {
  vec3_zero(&polar);
 } else {
  polar.x = asinf(v->y / polar.z);
  polar.y = atan2f(v->x, v->z);
 }

 vec3_copy(dst, &polar);
}
