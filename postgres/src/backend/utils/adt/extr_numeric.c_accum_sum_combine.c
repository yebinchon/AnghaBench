
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NumericVar ;
typedef int NumericSumAccum ;


 int accum_sum_add (int *,int *) ;
 int accum_sum_final (int *,int *) ;
 int free_var (int *) ;
 int init_var (int *) ;

__attribute__((used)) static void
accum_sum_combine(NumericSumAccum *accum, NumericSumAccum *accum2)
{
 NumericVar tmp_var;

 init_var(&tmp_var);

 accum_sum_final(accum2, &tmp_var);
 accum_sum_add(accum, &tmp_var);

 free_var(&tmp_var);
}
