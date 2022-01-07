
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct plane {float dist; int dir; } ;
struct bounds {int dummy; } ;


 int bounds_get_center (struct vec3*,struct bounds const*) ;
 float vec3_plane_dist (struct vec3*,struct plane const*) ;
 float vec3or_offset_len (struct bounds const*,int *) ;

float bounds_min_dist(const struct bounds *b, const struct plane *p)
{
 struct vec3 center;
 float vec_len = vec3or_offset_len(b, &p->dir) * 0.5f;
 float center_dist;

 bounds_get_center(&center, b);
 center_dist = vec3_plane_dist(&center, p);

 return p->dist + center_dist - vec_len;
}
