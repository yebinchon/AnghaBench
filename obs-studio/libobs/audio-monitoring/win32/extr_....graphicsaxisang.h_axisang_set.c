
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axisang {float x; float y; float z; float w; } ;



__attribute__((used)) static inline void axisang_set(struct axisang *dst, float x, float y, float z,
          float w)
{
 dst->x = x;
 dst->y = y;
 dst->z = z;
 dst->w = w;
}
