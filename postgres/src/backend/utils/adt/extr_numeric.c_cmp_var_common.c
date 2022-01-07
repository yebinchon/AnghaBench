
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NumericDigit ;


 int NUMERIC_NEG ;
 int NUMERIC_POS ;
 int cmp_abs_common (int const*,int,int,int const*,int,int) ;

__attribute__((used)) static int
cmp_var_common(const NumericDigit *var1digits, int var1ndigits,
      int var1weight, int var1sign,
      const NumericDigit *var2digits, int var2ndigits,
      int var2weight, int var2sign)
{
 if (var1ndigits == 0)
 {
  if (var2ndigits == 0)
   return 0;
  if (var2sign == NUMERIC_NEG)
   return 1;
  return -1;
 }
 if (var2ndigits == 0)
 {
  if (var1sign == NUMERIC_POS)
   return 1;
  return -1;
 }

 if (var1sign == NUMERIC_POS)
 {
  if (var2sign == NUMERIC_NEG)
   return 1;
  return cmp_abs_common(var1digits, var1ndigits, var1weight,
         var2digits, var2ndigits, var2weight);
 }

 if (var2sign == NUMERIC_POS)
  return -1;

 return cmp_abs_common(var2digits, var2ndigits, var2weight,
        var1digits, var1ndigits, var1weight);
}
