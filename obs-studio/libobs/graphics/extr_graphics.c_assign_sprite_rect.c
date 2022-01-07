
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void assign_sprite_rect(float *start, float *end, float size,
          bool flip)
{
 if (!flip) {
  *start = 0.0f;
  *end = size;
 } else {
  *start = size;
  *end = 0.0f;
 }
}
