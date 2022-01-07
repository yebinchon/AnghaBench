
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;


 int PG_INT64_MIN ;
 int memcpy (char*,char*,int) ;

void
pg_lltoa(int64 value, char *a)
{
 char *start = a;
 bool neg = 0;





 if (value == PG_INT64_MIN)
 {
  memcpy(a, "-9223372036854775808", 21);
  return;
 }
 else if (value < 0)
 {
  value = -value;
  neg = 1;
 }


 do
 {
  int64 remainder;
  int64 oldval = value;

  value /= 10;
  remainder = oldval - value * 10;
  *a++ = '0' + remainder;
 } while (value != 0);

 if (neg)
  *a++ = '-';


 *a-- = '\0';


 while (start < a)
 {
  char swap = *start;

  *start++ = *a;
  *a-- = swap;
 }
}
