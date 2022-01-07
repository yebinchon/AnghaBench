
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lower; scalar_t__ upper; } ;
typedef TYPE_1__ float4KEY ;
struct TYPE_4__ {scalar_t__ t; } ;
typedef TYPE_2__ Nsrt ;
typedef int FmgrInfo ;



__attribute__((used)) static int
gbt_float4key_cmp(const void *a, const void *b, FmgrInfo *flinfo)
{
 float4KEY *ia = (float4KEY *) (((const Nsrt *) a)->t);
 float4KEY *ib = (float4KEY *) (((const Nsrt *) b)->t);

 if (ia->lower == ib->lower)
 {
  if (ia->upper == ib->upper)
   return 0;

  return (ia->upper > ib->upper) ? 1 : -1;
 }

 return (ia->lower > ib->lower) ? 1 : -1;
}
