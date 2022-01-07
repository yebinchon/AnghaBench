
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ndigits; int * digits; int sign; int dscale; int rscale; int weight; } ;
typedef TYPE_1__ numeric ;


 scalar_t__ alloc_var (TYPE_1__*,int) ;
 int zero_var (TYPE_1__*) ;

int
PGTYPESnumeric_copy(numeric *src, numeric *dst)
{
 int i;

 if (dst == ((void*)0))
  return -1;
 zero_var(dst);

 dst->weight = src->weight;
 dst->rscale = src->rscale;
 dst->dscale = src->dscale;
 dst->sign = src->sign;

 if (alloc_var(dst, src->ndigits) != 0)
  return -1;

 for (i = 0; i < src->ndigits; i++)
  dst->digits[i] = src->digits[i];

 return 0;
}
