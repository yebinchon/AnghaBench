
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_6__ {int weight; int ndigits; int have_carry_space; scalar_t__* pos_digits; scalar_t__* neg_digits; scalar_t__ dscale; } ;
struct TYPE_5__ {int weight; int ndigits; scalar_t__ dscale; } ;
typedef TYPE_1__ NumericVar ;
typedef TYPE_2__ NumericSumAccum ;


 int Assert (int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 scalar_t__* palloc0 (int) ;
 int pfree (scalar_t__*) ;

__attribute__((used)) static void
accum_sum_rescale(NumericSumAccum *accum, const NumericVar *val)
{
 int old_weight = accum->weight;
 int old_ndigits = accum->ndigits;
 int accum_ndigits;
 int accum_weight;
 int accum_rscale;
 int val_rscale;

 accum_weight = old_weight;
 accum_ndigits = old_ndigits;
 if (val->weight >= accum_weight)
 {
  accum_weight = val->weight + 1;
  accum_ndigits = accum_ndigits + (accum_weight - old_weight);
 }






 else if (!accum->have_carry_space)
 {
  accum_weight++;
  accum_ndigits++;
 }


 accum_rscale = accum_ndigits - accum_weight - 1;
 val_rscale = val->ndigits - val->weight - 1;
 if (val_rscale > accum_rscale)
  accum_ndigits = accum_ndigits + (val_rscale - accum_rscale);

 if (accum_ndigits != old_ndigits ||
  accum_weight != old_weight)
 {
  int32 *new_pos_digits;
  int32 *new_neg_digits;
  int weightdiff;

  weightdiff = accum_weight - old_weight;

  new_pos_digits = palloc0(accum_ndigits * sizeof(int32));
  new_neg_digits = palloc0(accum_ndigits * sizeof(int32));

  if (accum->pos_digits)
  {
   memcpy(&new_pos_digits[weightdiff], accum->pos_digits,
       old_ndigits * sizeof(int32));
   pfree(accum->pos_digits);

   memcpy(&new_neg_digits[weightdiff], accum->neg_digits,
       old_ndigits * sizeof(int32));
   pfree(accum->neg_digits);
  }

  accum->pos_digits = new_pos_digits;
  accum->neg_digits = new_neg_digits;

  accum->weight = accum_weight;
  accum->ndigits = accum_ndigits;

  Assert(accum->pos_digits[0] == 0 && accum->neg_digits[0] == 0);
  accum->have_carry_space = 1;
 }

 if (val->dscale > accum->dscale)
  accum->dscale = val->dscale;
}
