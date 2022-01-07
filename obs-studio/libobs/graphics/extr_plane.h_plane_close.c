
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plane {int dist; int dir; } ;


 scalar_t__ close_float (int ,int ,float) ;
 scalar_t__ vec3_close (int *,int *,float) ;

__attribute__((used)) static inline bool plane_close(const struct plane *p1, const struct plane *p2,
          float precision)
{
 return vec3_close(&p1->dir, &p2->dir, precision) &&
        close_float(p1->dist, p2->dist, precision);
}
