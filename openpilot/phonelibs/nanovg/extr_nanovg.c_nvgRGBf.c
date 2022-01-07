
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcolor ;


 int nvgRGBAf (float,float,float,float) ;

NVGcolor nvgRGBf(float r, float g, float b)
{
 return nvgRGBAf(r,g,b,1.0f);
}
