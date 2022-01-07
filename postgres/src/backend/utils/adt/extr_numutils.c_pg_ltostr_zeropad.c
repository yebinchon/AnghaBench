
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;


 int Assert (int) ;
 char* pg_ltostr (char*,size_t) ;

char *
pg_ltostr_zeropad(char *str, int32 value, int32 minwidth)
{
 char *start = str;
 char *end = &str[minwidth];
 int32 num = value;

 Assert(minwidth > 0);





 if (num < 0)
 {
  *start++ = '-';
  minwidth--;






  while (minwidth--)
  {
   int32 oldval = num;
   int32 remainder;

   num /= 10;
   remainder = oldval - num * 10;
   start[minwidth] = '0' - remainder;
  }
 }
 else
 {

  while (minwidth--)
  {
   int32 oldval = num;
   int32 remainder;

   num /= 10;
   remainder = oldval - num * 10;
   start[minwidth] = '0' + remainder;
  }
 }






 if (num != 0)
  return pg_ltostr(str, value);


 return end;
}
