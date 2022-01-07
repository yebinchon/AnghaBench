
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_9__ {int num_uncarried; int weight; scalar_t__* neg_digits; scalar_t__* pos_digits; } ;
struct TYPE_8__ {scalar_t__ sign; int ndigits; int weight; scalar_t__* digits; } ;
typedef TYPE_1__ NumericVar ;
typedef TYPE_2__ NumericSumAccum ;
typedef scalar_t__ NumericDigit ;


 int NBASE ;
 scalar_t__ NUMERIC_POS ;
 int accum_sum_carry (TYPE_2__*) ;
 int accum_sum_rescale (TYPE_2__*,TYPE_1__ const*) ;

__attribute__((used)) static void
accum_sum_add(NumericSumAccum *accum, const NumericVar *val)
{
 int32 *accum_digits;
 int i,
    val_i;
 int val_ndigits;
 NumericDigit *val_digits;
 if (accum->num_uncarried == NBASE - 1)
  accum_sum_carry(accum);





 accum_sum_rescale(accum, val);


 if (val->sign == NUMERIC_POS)
  accum_digits = accum->pos_digits;
 else
  accum_digits = accum->neg_digits;


 val_ndigits = val->ndigits;
 val_digits = val->digits;

 i = accum->weight - val->weight;
 for (val_i = 0; val_i < val_ndigits; val_i++)
 {
  accum_digits[i] += (int32) val_digits[val_i];
  i++;
 }

 accum->num_uncarried++;
}
