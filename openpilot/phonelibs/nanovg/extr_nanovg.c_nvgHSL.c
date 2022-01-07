
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcolor ;


 int nvgHSLA (float,float,float,int) ;

NVGcolor nvgHSL(float h, float s, float l)
{
 return nvgHSLA(h,s,l,255);
}
