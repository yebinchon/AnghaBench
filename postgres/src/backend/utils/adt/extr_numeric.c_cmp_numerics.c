
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Numeric ;


 int NUMERIC_DIGITS (int ) ;
 scalar_t__ NUMERIC_IS_NAN (int ) ;
 int NUMERIC_NDIGITS (int ) ;
 int NUMERIC_SIGN (int ) ;
 int NUMERIC_WEIGHT (int ) ;
 int cmp_var_common (int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
cmp_numerics(Numeric num1, Numeric num2)
{
 int result;






 if (NUMERIC_IS_NAN(num1))
 {
  if (NUMERIC_IS_NAN(num2))
   result = 0;
  else
   result = 1;
 }
 else if (NUMERIC_IS_NAN(num2))
 {
  result = -1;
 }
 else
 {
  result = cmp_var_common(NUMERIC_DIGITS(num1), NUMERIC_NDIGITS(num1),
        NUMERIC_WEIGHT(num1), NUMERIC_SIGN(num1),
        NUMERIC_DIGITS(num2), NUMERIC_NDIGITS(num2),
        NUMERIC_WEIGHT(num2), NUMERIC_SIGN(num2));
 }

 return result;
}
