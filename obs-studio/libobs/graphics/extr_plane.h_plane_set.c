
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct plane {float dist; int dir; } ;


 int vec3_copy (int *,struct vec3 const*) ;

__attribute__((used)) static inline void plane_set(struct plane *dst, const struct vec3 *dir,
        float dist)
{
 vec3_copy(&dst->dir, dir);
 dst->dist = dist;
}
