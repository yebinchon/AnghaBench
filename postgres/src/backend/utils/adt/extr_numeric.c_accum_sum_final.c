
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* int16 ;
struct TYPE_13__ {int ndigits; scalar_t__* pos_digits; scalar_t__* neg_digits; int dscale; int weight; } ;
struct TYPE_12__ {int ndigits; void** digits; void** buf; int sign; int dscale; int weight; } ;
typedef TYPE_1__ NumericVar ;
typedef TYPE_2__ NumericSumAccum ;


 int Assert (int) ;
 scalar_t__ NBASE ;
 int NUMERIC_NEG ;
 int NUMERIC_POS ;
 int accum_sum_carry (TYPE_2__*) ;
 int add_var (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int const_zero ;
 void* digitbuf_alloc (int) ;
 int init_var (TYPE_1__*) ;
 int set_var_from_var (int *,TYPE_1__*) ;
 int strip_var (TYPE_1__*) ;

__attribute__((used)) static void
accum_sum_final(NumericSumAccum *accum, NumericVar *result)
{
 int i;
 NumericVar pos_var;
 NumericVar neg_var;

 if (accum->ndigits == 0)
 {
  set_var_from_var(&const_zero, result);
  return;
 }


 accum_sum_carry(accum);


 init_var(&pos_var);
 init_var(&neg_var);

 pos_var.ndigits = neg_var.ndigits = accum->ndigits;
 pos_var.weight = neg_var.weight = accum->weight;
 pos_var.dscale = neg_var.dscale = accum->dscale;
 pos_var.sign = NUMERIC_POS;
 neg_var.sign = NUMERIC_NEG;

 pos_var.buf = pos_var.digits = digitbuf_alloc(accum->ndigits);
 neg_var.buf = neg_var.digits = digitbuf_alloc(accum->ndigits);

 for (i = 0; i < accum->ndigits; i++)
 {
  Assert(accum->pos_digits[i] < NBASE);
  pos_var.digits[i] = (int16) accum->pos_digits[i];

  Assert(accum->neg_digits[i] < NBASE);
  neg_var.digits[i] = (int16) accum->neg_digits[i];
 }


 add_var(&pos_var, &neg_var, result);


 strip_var(result);
}
