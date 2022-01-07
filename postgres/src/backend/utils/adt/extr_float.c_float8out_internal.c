
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBL_DIG ;
 int double_to_shortest_decimal_buf (double,char*) ;
 int extra_float_digits ;
 scalar_t__ palloc (int) ;
 int pg_strfromd (char*,int,int,double) ;

char *
float8out_internal(double num)
{
 char *ascii = (char *) palloc(32);
 int ndig = DBL_DIG + extra_float_digits;

 if (extra_float_digits > 0)
 {
  double_to_shortest_decimal_buf(num, ascii);
  return ascii;
 }

 (void) pg_strfromd(ascii, 32, ndig, num);
 return ascii;
}
