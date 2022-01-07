
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ndigits; int * digits; int sign; int dscale; int rscale; int weight; } ;
typedef TYPE_1__ numeric ;
struct TYPE_6__ {int ndigits; int * digits; int sign; int dscale; int rscale; int weight; } ;
typedef TYPE_2__ decimal ;


 int DECSIZE ;
 int PGTYPES_NUM_OVERFLOW ;
 int errno ;

int
PGTYPESnumeric_to_decimal(numeric *src, decimal *dst)
{
 int i;

 if (src->ndigits > DECSIZE)
 {
  errno = PGTYPES_NUM_OVERFLOW;
  return -1;
 }

 dst->weight = src->weight;
 dst->rscale = src->rscale;
 dst->dscale = src->dscale;
 dst->sign = src->sign;
 dst->ndigits = src->ndigits;

 for (i = 0; i < src->ndigits; i++)
  dst->digits[i] = src->digits[i];

 return 0;
}
