
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axisang {float x; float y; float z; float w; } ;



__attribute__((used)) static inline void axisang_zero(struct axisang *dst)
{
 dst->x = 0.0f;
 dst->y = 0.0f;
 dst->z = 0.0f;
 dst->w = 0.0f;
}
