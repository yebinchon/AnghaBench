
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int dscale; } ;
typedef TYPE_1__ NumericVar ;


 int Max (int,int ) ;
 int Min (int,int ) ;
 int NUMERIC_MAX_DISPLAY_SCALE ;
 int NUMERIC_MIN_DISPLAY_SCALE ;
 int NUMERIC_MIN_SIG_DIGITS ;
 int div_var_fast (TYPE_1__*,TYPE_1__*,TYPE_1__*,int,int) ;
 int estimate_ln_dweight (TYPE_1__ const*) ;
 int free_var (TYPE_1__*) ;
 int init_var (TYPE_1__*) ;
 int ln_var (TYPE_1__ const*,TYPE_1__*,int) ;

__attribute__((used)) static void
log_var(const NumericVar *base, const NumericVar *num, NumericVar *result)
{
 NumericVar ln_base;
 NumericVar ln_num;
 int ln_base_dweight;
 int ln_num_dweight;
 int result_dweight;
 int rscale;
 int ln_base_rscale;
 int ln_num_rscale;

 init_var(&ln_base);
 init_var(&ln_num);


 ln_base_dweight = estimate_ln_dweight(base);
 ln_num_dweight = estimate_ln_dweight(num);
 result_dweight = ln_num_dweight - ln_base_dweight;






 rscale = NUMERIC_MIN_SIG_DIGITS - result_dweight;
 rscale = Max(rscale, base->dscale);
 rscale = Max(rscale, num->dscale);
 rscale = Max(rscale, NUMERIC_MIN_DISPLAY_SCALE);
 rscale = Min(rscale, NUMERIC_MAX_DISPLAY_SCALE);





 ln_base_rscale = rscale + result_dweight - ln_base_dweight + 8;
 ln_base_rscale = Max(ln_base_rscale, NUMERIC_MIN_DISPLAY_SCALE);

 ln_num_rscale = rscale + result_dweight - ln_num_dweight + 8;
 ln_num_rscale = Max(ln_num_rscale, NUMERIC_MIN_DISPLAY_SCALE);


 ln_var(base, &ln_base, ln_base_rscale);
 ln_var(num, &ln_num, ln_num_rscale);


 div_var_fast(&ln_num, &ln_base, result, rscale, 1);

 free_var(&ln_num);
 free_var(&ln_base);
}
