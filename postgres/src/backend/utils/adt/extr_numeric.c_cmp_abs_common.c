
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ NumericDigit ;



__attribute__((used)) static int
cmp_abs_common(const NumericDigit *var1digits, int var1ndigits, int var1weight,
      const NumericDigit *var2digits, int var2ndigits, int var2weight)
{
 int i1 = 0;
 int i2 = 0;



 while (var1weight > var2weight && i1 < var1ndigits)
 {
  if (var1digits[i1++] != 0)
   return 1;
  var1weight--;
 }
 while (var2weight > var1weight && i2 < var2ndigits)
 {
  if (var2digits[i2++] != 0)
   return -1;
  var2weight--;
 }



 if (var1weight == var2weight)
 {
  while (i1 < var1ndigits && i2 < var2ndigits)
  {
   int stat = var1digits[i1++] - var2digits[i2++];

   if (stat)
   {
    if (stat > 0)
     return 1;
    return -1;
   }
  }
 }





 while (i1 < var1ndigits)
 {
  if (var1digits[i1++] != 0)
   return 1;
 }
 while (i2 < var2ndigits)
 {
  if (var2digits[i2++] != 0)
   return -1;
 }

 return 0;
}
