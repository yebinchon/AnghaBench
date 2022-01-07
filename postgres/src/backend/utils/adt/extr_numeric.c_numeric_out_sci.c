
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NumericVar ;
typedef int Numeric ;


 scalar_t__ NUMERIC_IS_NAN (int ) ;
 char* get_str_from_var_sci (int *,int) ;
 int init_var_from_num (int ,int *) ;
 char* pstrdup (char*) ;

char *
numeric_out_sci(Numeric num, int scale)
{
 NumericVar x;
 char *str;




 if (NUMERIC_IS_NAN(num))
  return pstrdup("NaN");

 init_var_from_num(num, &x);

 str = get_str_from_var_sci(&x, scale);

 return str;
}
