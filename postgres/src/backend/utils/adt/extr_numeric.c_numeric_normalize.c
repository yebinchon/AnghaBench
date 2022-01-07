
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NumericVar ;
typedef int Numeric ;


 scalar_t__ NUMERIC_IS_NAN (int ) ;
 char* get_str_from_var (int *) ;
 int init_var_from_num (int ,int *) ;
 char* pstrdup (char*) ;
 int * strchr (char*,char) ;
 int strlen (char*) ;

char *
numeric_normalize(Numeric num)
{
 NumericVar x;
 char *str;
 int last;




 if (NUMERIC_IS_NAN(num))
  return pstrdup("NaN");

 init_var_from_num(num, &x);

 str = get_str_from_var(&x);


 if (strchr(str, '.') != ((void*)0))
 {




  last = strlen(str) - 1;
  while (str[last] == '0')
   last--;


  if (str[last] == '.')
   last--;


  str[last + 1] = '\0';
 }

 return str;
}
