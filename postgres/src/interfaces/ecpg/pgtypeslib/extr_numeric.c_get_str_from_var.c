
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sign; int weight; int ndigits; int* digits; } ;
typedef TYPE_1__ numeric ;


 int Max (int,int) ;
 int Min (int,int) ;
 scalar_t__ NUMERIC_NAN ;
 scalar_t__ NUMERIC_NEG ;
 scalar_t__ pgtypes_alloc (int) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static char *
get_str_from_var(numeric *var, int dscale)
{
 char *str;
 char *cp;
 int i;
 int d;

 if (var->sign == NUMERIC_NAN)
 {
  str = (char *) pgtypes_alloc(4);
  if (str == ((void*)0))
   return ((void*)0);
  sprintf(str, "NaN");
  return str;
 }




 i = dscale + var->weight + 1;
 if (i >= 0 && var->ndigits > i)
 {
  int carry = (var->digits[i] > 4) ? 1 : 0;

  var->ndigits = i;

  while (carry)
  {
   carry += var->digits[--i];
   var->digits[i] = carry % 10;
   carry /= 10;
  }

  if (i < 0)
  {
   var->digits--;
   var->ndigits++;
   var->weight++;
  }
 }
 else
  var->ndigits = Max(0, Min(i, var->ndigits));




 if ((str = (char *) pgtypes_alloc(Max(0, dscale) + Max(0, var->weight) + 4)) == ((void*)0))
  return ((void*)0);
 cp = str;




 if (var->sign == NUMERIC_NEG)
  *cp++ = '-';




 i = Max(var->weight, 0);
 d = 0;

 while (i >= 0)
 {
  if (i <= var->weight && d < var->ndigits)
   *cp++ = var->digits[d++] + '0';
  else
   *cp++ = '0';
  i--;
 }




 if (dscale > 0)
 {
  *cp++ = '.';
  while (i >= -dscale)
  {
   if (i <= var->weight && d < var->ndigits)
    *cp++ = var->digits[d++] + '0';
   else
    *cp++ = '0';
   i--;
  }
 }




 *cp = '\0';
 return str;
}
