
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct bounds {int dummy; } ;


 int bounds_intersection_line (struct bounds const*,struct vec3 const*,struct vec3 const*,float*) ;

__attribute__((used)) static inline bool bounds_intersects_line(const struct bounds *b,
       const struct vec3 *p1,
       const struct vec3 *p2)
{
 float t;
 return bounds_intersection_line(b, p1, p2, &t);
}
