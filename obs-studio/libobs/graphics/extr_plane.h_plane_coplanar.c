
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plane {float dist; int dir; } ;


 int close_float (float,float,float) ;
 float vec3_dot (int *,int *) ;

__attribute__((used)) static inline bool plane_coplanar(const struct plane *p1,
      const struct plane *p2, float precision)
{
 float cos_angle = vec3_dot(&p1->dir, &p2->dir);

 if (close_float(cos_angle, 1.0f, precision))
  return close_float(p1->dist, p2->dist, precision);
 else if (close_float(cos_angle, -1.0f, precision))
  return close_float(-p1->dist, p2->dist, precision);

 return 0;
}
