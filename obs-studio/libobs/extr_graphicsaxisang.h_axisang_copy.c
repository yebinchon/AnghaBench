
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axisang {int w; int z; int y; int x; } ;



__attribute__((used)) static inline void axisang_copy(struct axisang *dst, struct axisang *aa)
{
 dst->x = aa->x;
 dst->y = aa->y;
 dst->z = aa->z;
 dst->w = aa->w;
}
