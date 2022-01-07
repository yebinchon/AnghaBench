
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {scalar_t__ num_uncarried; scalar_t__* pos_digits; scalar_t__* neg_digits; int ndigits; int have_carry_space; } ;
typedef TYPE_1__ NumericSumAccum ;


 int Assert (int) ;
 int NBASE ;

__attribute__((used)) static void
accum_sum_carry(NumericSumAccum *accum)
{
 int i;
 int ndigits;
 int32 *dig;
 int32 carry;
 int32 newdig = 0;





 if (accum->num_uncarried == 0)
  return;
 Assert(accum->pos_digits[0] == 0 && accum->neg_digits[0] == 0);

 ndigits = accum->ndigits;


 dig = accum->pos_digits;
 carry = 0;
 for (i = ndigits - 1; i >= 0; i--)
 {
  newdig = dig[i] + carry;
  if (newdig >= NBASE)
  {
   carry = newdig / NBASE;
   newdig -= carry * NBASE;
  }
  else
   carry = 0;
  dig[i] = newdig;
 }

 if (newdig > 0)
  accum->have_carry_space = 0;


 dig = accum->neg_digits;
 carry = 0;
 for (i = ndigits - 1; i >= 0; i--)
 {
  newdig = dig[i] + carry;
  if (newdig >= NBASE)
  {
   carry = newdig / NBASE;
   newdig -= carry * NBASE;
  }
  else
   carry = 0;
  dig[i] = newdig;
 }
 if (newdig > 0)
  accum->have_carry_space = 0;

 accum->num_uncarried = 0;
}
