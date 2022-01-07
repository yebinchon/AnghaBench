
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int Interval ;
typedef int FmgrInfo ;


 int Abs (scalar_t__) ;
 scalar_t__ intr2num (int const*) ;

__attribute__((used)) static float8
gbt_intv_dist(const void *a, const void *b, FmgrInfo *flinfo)
{
 return (float8) Abs(intr2num((const Interval *) a) - intr2num((const Interval *) b));
}
