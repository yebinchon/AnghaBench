
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plane {float dist; int dir; } ;


 int vec3_set (int *,float,float,float) ;

__attribute__((used)) static inline void plane_setf(struct plane *dst, float a, float b, float c,
         float d)
{
 vec3_set(&dst->dir, a, b, c);
 dst->dist = d;
}
