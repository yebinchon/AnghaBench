
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void assign_sprite_uv(float *start, float *end, bool flip)
{
 if (!flip) {
  *start = 0.0f;
  *end = 1.0f;
 } else {
  *start = 1.0f;
  *end = 0.0f;
 }
}
