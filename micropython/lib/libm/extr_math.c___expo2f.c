
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SET_FLOAT_WORD (float,int) ;
 float expf (scalar_t__) ;
 int k ;
 scalar_t__ kln2 ;

float __expo2f(float x)
{
 float scale;


 SET_FLOAT_WORD(scale, (uint32_t)(0x7f + k/2) << 23);

 return expf(x - kln2) * scale * scale;
}
