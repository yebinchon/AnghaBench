
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float clamp (float,float,float) ;

__attribute__((used)) static inline float smoothstep(float min, float max, float x)
{
 x = clamp((x - min) / (max - min), 0.0f, 1.0f);
 return x * x * (3 - 2 * x);
}
