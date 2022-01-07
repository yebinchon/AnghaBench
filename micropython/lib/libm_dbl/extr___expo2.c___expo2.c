
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int INSERT_WORDS (double,int,int ) ;
 double exp (scalar_t__) ;
 int k ;
 scalar_t__ kln2 ;

double __expo2(double x)
{
 double scale;


 INSERT_WORDS(scale, (uint32_t)(0x3ff + k/2) << 20, 0);

 return exp(x - kln2) * scale * scale;
}
