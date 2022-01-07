
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {int ndigits; int dscale; int weight; int num_uncarried; void* neg_digits; void* pos_digits; } ;
typedef TYPE_1__ NumericSumAccum ;


 int memcpy (void*,void*,int) ;
 void* palloc (int) ;

__attribute__((used)) static void
accum_sum_copy(NumericSumAccum *dst, NumericSumAccum *src)
{
 dst->pos_digits = palloc(src->ndigits * sizeof(int32));
 dst->neg_digits = palloc(src->ndigits * sizeof(int32));

 memcpy(dst->pos_digits, src->pos_digits, src->ndigits * sizeof(int32));
 memcpy(dst->neg_digits, src->neg_digits, src->ndigits * sizeof(int32));
 dst->num_uncarried = src->num_uncarried;
 dst->ndigits = src->ndigits;
 dst->weight = src->weight;
 dst->dscale = src->dscale;
}
