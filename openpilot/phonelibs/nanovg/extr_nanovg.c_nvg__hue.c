
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float nvg__hue(float h, float m1, float m2)
{
 if (h < 0) h += 1;
 if (h > 1) h -= 1;
 if (h < 1.0f/6.0f)
  return m1 + (m2 - m1) * h * 6.0f;
 else if (h < 3.0f/6.0f)
  return m2;
 else if (h < 4.0f/6.0f)
  return m1 + (m2 - m1) * (2.0f/3.0f - h) * 6.0f;
 return m1;
}
