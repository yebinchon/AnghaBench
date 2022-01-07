
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int FP_INFINITE ;
 int FP_NAN ;
 int FP_NORMAL ;
 int FP_SUBNORMAL ;
 int FP_ZERO ;

int __fpclassifyd(double x)
{
 union {double f; uint64_t i;} u = {x};
 int e = u.i>>52 & 0x7ff;
 if (!e) return u.i<<1 ? FP_SUBNORMAL : FP_ZERO;
 if (e==0x7ff) return u.i<<12 ? FP_NAN : FP_INFINITE;
 return FP_NORMAL;
}
