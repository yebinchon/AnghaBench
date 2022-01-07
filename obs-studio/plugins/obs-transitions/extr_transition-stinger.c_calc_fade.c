
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float calc_fade(float t, float mul)
{
 t *= mul;
 return t > 1.0f ? 1.0f : t;
}
