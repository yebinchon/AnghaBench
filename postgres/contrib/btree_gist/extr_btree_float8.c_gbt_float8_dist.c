
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ float8 ;
typedef int FmgrInfo ;


 scalar_t__ Abs (scalar_t__) ;
 int CHECKFLOATVAL (scalar_t__,int,int) ;
 scalar_t__ isinf (scalar_t__) ;

__attribute__((used)) static float8
gbt_float8_dist(const void *a, const void *b, FmgrInfo *flinfo)
{
 float8 arg1 = *(const float8 *) a;
 float8 arg2 = *(const float8 *) b;
 float8 r;

 r = arg1 - arg2;
 CHECKFLOATVAL(r, isinf(arg1) || isinf(arg2), 1);

 return Abs(r);
}
