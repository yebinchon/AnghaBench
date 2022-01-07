
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float INFINITY ;
 float log10f (float const) ;

__attribute__((used)) static inline float mul_to_db(const float mul)
{
 return (mul == 0.0f) ? -INFINITY : (20.0f * log10f(mul));
}
