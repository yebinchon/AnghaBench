
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void nvgTransformTranslate(float* t, float tx, float ty)
{
 t[0] = 1.0f; t[1] = 0.0f;
 t[2] = 0.0f; t[3] = 1.0f;
 t[4] = tx; t[5] = ty;
}
