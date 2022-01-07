
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct plane {float dist; int dir; } ;


 float vec3_dot (struct vec3 const*,int *) ;

float vec3_plane_dist(const struct vec3 *v, const struct plane *p)
{
 return vec3_dot(v, &p->dir) - p->dist;
}
