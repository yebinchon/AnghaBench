
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int temp ;
struct vec3 {scalar_t__ x; scalar_t__ y; scalar_t__ z; } ;
struct matrix3 {int dummy; } ;
struct TYPE_2__ {scalar_t__ x; scalar_t__ y; scalar_t__ z; } ;
struct bounds {TYPE_1__ max; TYPE_1__ min; } ;


 int bounds_copy (struct bounds*,struct bounds*) ;
 int bounds_get_point (struct vec3*,struct bounds const*,int) ;
 int memset (struct bounds*,int ,int) ;
 int vec3_copy (TYPE_1__*,struct vec3*) ;
 int vec3_transform3x4 (struct vec3*,struct vec3*,struct matrix3 const*) ;

void bounds_transform3x4(struct bounds *dst, const struct bounds *b,
    const struct matrix3 *m)
{
 struct bounds temp;
 bool b_init = 0;
 int i;

 memset(&temp, 0, sizeof(temp));

 for (i = 0; i < 8; i++) {
  struct vec3 p;
  bounds_get_point(&p, b, i);
  vec3_transform3x4(&p, &p, m);

  if (!b_init) {
   vec3_copy(&temp.min, &p);
   vec3_copy(&temp.max, &p);
   b_init = 1;
  } else {
   if (p.x < temp.min.x)
    temp.min.x = p.x;
   else if (p.x > temp.max.x)
    temp.max.x = p.x;

   if (p.y < temp.min.y)
    temp.min.y = p.y;
   else if (p.y > temp.max.y)
    temp.max.y = p.y;

   if (p.z < temp.min.z)
    temp.min.z = p.z;
   else if (p.z > temp.max.z)
    temp.max.z = p.z;
  }
 }

 bounds_copy(dst, &temp);
}
