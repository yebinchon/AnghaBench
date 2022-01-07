
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void nvgTransformPoint(float* dx, float* dy, const float* t, float sx, float sy)
{
 *dx = sx*t[0] + sy*t[2] + t[4];
 *dy = sx*t[1] + sy*t[3] + t[5];
}
