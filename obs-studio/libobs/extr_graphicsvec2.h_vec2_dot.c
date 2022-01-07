
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {float x; float y; } ;



__attribute__((used)) static inline float vec2_dot(const struct vec2 *v1, const struct vec2 *v2)
{
 return v1->x * v2->x + v1->y * v2->y;
}
