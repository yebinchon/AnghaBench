
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (float*,float const*,int) ;
 int nvgTransformMultiply (float*,float*) ;

void nvgTransformPremultiply(float* t, const float* s)
{
 float s2[6];
 memcpy(s2, s, sizeof(float)*6);
 nvgTransformMultiply(s2, t);
 memcpy(t, s2, sizeof(float)*6);
}
