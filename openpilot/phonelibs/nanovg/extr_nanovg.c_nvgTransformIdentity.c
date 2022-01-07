
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void nvgTransformIdentity(float* t)
{
 t[0] = 1.0f; t[1] = 0.0f;
 t[2] = 0.0f; t[3] = 1.0f;
 t[4] = 0.0f; t[5] = 0.0f;
}
