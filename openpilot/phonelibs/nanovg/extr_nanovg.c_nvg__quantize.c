
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float nvg__quantize(float a, float d)
{
 return ((int)(a / d + 0.5f)) * d;
}
