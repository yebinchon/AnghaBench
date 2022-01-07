
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;



char *
pg_ltostr(char *str, int32 value)
{
 char *start;
 char *end;





 if (value < 0)
 {
  *str++ = '-';


  start = str;


  do
  {
   int32 oldval = value;
   int32 remainder;

   value /= 10;
   remainder = oldval - value * 10;

   *str++ = '0' - remainder;
  } while (value != 0);
 }
 else
 {

  start = str;


  do
  {
   int32 oldval = value;
   int32 remainder;

   value /= 10;
   remainder = oldval - value * 10;
   *str++ = '0' + remainder;
  } while (value != 0);
 }


 end = str--;


 while (start < str)
 {
  char swap = *start;

  *start++ = *str;
  *str-- = swap;
 }

 return end;
}
