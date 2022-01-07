
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void nvgTransformScale(float* t, float sx, float sy)
{
 t[0] = sx; t[1] = 0.0f;
 t[2] = 0.0f; t[3] = sy;
 t[4] = 0.0f; t[5] = 0.0f;
}
