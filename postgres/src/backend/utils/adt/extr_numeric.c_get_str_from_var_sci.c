
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_10__ {scalar_t__ ndigits; int weight; int * digits; } ;
typedef TYPE_1__ NumericVar ;


 int DEC_DIGITS ;
 int const_ten ;
 int div_var (TYPE_1__ const*,TYPE_1__*,TYPE_1__*,int,int) ;
 int free_var (TYPE_1__*) ;
 char* get_str_from_var (TYPE_1__*) ;
 int init_var (TYPE_1__*) ;
 scalar_t__ log10 (int ) ;
 char* palloc (size_t) ;
 int pfree (char*) ;
 int power_var_int (int *,int,TYPE_1__*,int) ;
 int snprintf (char*,size_t,char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *
get_str_from_var_sci(const NumericVar *var, int rscale)
{
 int32 exponent;
 NumericVar denominator;
 NumericVar significand;
 int denom_scale;
 size_t len;
 char *str;
 char *sig_out;

 if (rscale < 0)
  rscale = 0;







 if (var->ndigits > 0)
 {
  exponent = (var->weight + 1) * DEC_DIGITS;





  exponent -= DEC_DIGITS - (int) log10(var->digits[0]);
 }
 else
 {







  exponent = 0;
 }







 if (exponent < 0)
  denom_scale = -exponent;
 else
  denom_scale = 0;

 init_var(&denominator);
 init_var(&significand);

 power_var_int(&const_ten, exponent, &denominator, denom_scale);
 div_var(var, &denominator, &significand, rscale, 1);
 sig_out = get_str_from_var(&significand);

 free_var(&denominator);
 free_var(&significand);
 len = strlen(sig_out) + 13;
 str = palloc(len);
 snprintf(str, len, "%se%+03d", sig_out, exponent);

 pfree(sig_out);

 return str;
}
