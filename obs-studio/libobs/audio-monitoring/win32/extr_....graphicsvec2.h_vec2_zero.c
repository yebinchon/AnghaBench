
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {float x; float y; } ;



__attribute__((used)) static inline void vec2_zero(struct vec2 *dst)
{
 dst->x = 0.0f;
 dst->y = 0.0f;
}
