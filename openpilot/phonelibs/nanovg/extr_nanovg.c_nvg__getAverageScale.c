
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float sqrtf (float) ;

__attribute__((used)) static float nvg__getAverageScale(float *t)
{
 float sx = sqrtf(t[0]*t[0] + t[2]*t[2]);
 float sy = sqrtf(t[1]*t[1] + t[3]*t[3]);
 return (sx + sy) * 0.5f;
}
