
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plane {int dist; int dir; } ;


 int vec3_copy (int *,int *) ;

__attribute__((used)) static inline void plane_copy(struct plane *dst, const struct plane *p)
{
 vec3_copy(&dst->dir, &p->dir);
 dst->dist = p->dist;
}
