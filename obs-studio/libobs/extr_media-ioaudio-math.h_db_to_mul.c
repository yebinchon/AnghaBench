
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isfinite (double) ;
 float powf (float,float const) ;

__attribute__((used)) static inline float db_to_mul(const float db)
{
 return isfinite((double)db) ? powf(10.0f, db / 20.0f) : 0.0f;
}
