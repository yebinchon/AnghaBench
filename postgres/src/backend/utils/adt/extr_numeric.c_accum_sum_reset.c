
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ndigits; scalar_t__* neg_digits; scalar_t__* pos_digits; scalar_t__ dscale; } ;
typedef TYPE_1__ NumericSumAccum ;



__attribute__((used)) static void
accum_sum_reset(NumericSumAccum *accum)
{
 int i;

 accum->dscale = 0;
 for (i = 0; i < accum->ndigits; i++)
 {
  accum->pos_digits[i] = 0;
  accum->neg_digits[i] = 0;
 }
}
