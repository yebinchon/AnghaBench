
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FP_INFINITE ;
 int FP_NAN ;
 int FP_NORMAL ;
 int FP_SUBNORMAL ;
 int FP_ZERO ;

int __fpclassifyf(float x)
{
 union {float f; uint32_t i;} u = {x};
 int e = u.i>>23 & 0xff;
 if (!e) return u.i<<1 ? FP_SUBNORMAL : FP_ZERO;
 if (e==0xff) return u.i<<9 ? FP_NAN : FP_INFINITE;
 return FP_NORMAL;
}
