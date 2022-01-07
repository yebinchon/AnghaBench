
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float cubic_ease_in_out(float t)
{
 if (t < 0.5f) {
  return 4.0f * t * t * t;
 } else {
  float temp = (2.0f * t - 2.0f);
  return (t - 1.0f) * temp * temp + 1.0f;
 }
}
