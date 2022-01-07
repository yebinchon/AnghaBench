
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nvgTransformIdentity (float*) ;

int nvgTransformInverse(float* inv, const float* t)
{
 double invdet, det = (double)t[0] * t[3] - (double)t[2] * t[1];
 if (det > -1e-6 && det < 1e-6) {
  nvgTransformIdentity(inv);
  return 0;
 }
 invdet = 1.0 / det;
 inv[0] = (float)(t[3] * invdet);
 inv[2] = (float)(-t[2] * invdet);
 inv[4] = (float)(((double)t[2] * t[5] - (double)t[3] * t[4]) * invdet);
 inv[1] = (float)(-t[1] * invdet);
 inv[3] = (float)(t[0] * invdet);
 inv[5] = (float)(((double)t[1] * t[4] - (double)t[0] * t[5]) * invdet);
 return 1;
}
