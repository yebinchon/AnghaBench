
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int x; int y; } ;


 float sqrtf (int) ;

__attribute__((used)) static inline float vec2_len(const struct vec2 *v)
{
 return sqrtf(v->x * v->x + v->y * v->y);
}
