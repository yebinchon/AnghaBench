
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int PG_INT32_MIN ;
 int memcpy (char*,char*,int) ;

void
pg_ltoa(int32 value, char *a)
{
 char *start = a;
 bool neg = 0;





 if (value == PG_INT32_MIN)
 {
  memcpy(a, "-2147483648", 12);
  return;
 }
 else if (value < 0)
 {
  value = -value;
  neg = 1;
 }


 do
 {
  int32 remainder;
  int32 oldval = value;

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
