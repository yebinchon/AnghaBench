
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char * ultoa(unsigned long val, char *buf, int radix)
{
 unsigned digit;
 int i=0, j;
 char t;

 while (1) {
  digit = val % radix;
  buf[i] = ((digit < 10) ? '0' + digit : 'A' + digit - 10);
  val /= radix;
  if (val == 0) break;
  i++;
 }
 buf[i + 1] = 0;
 for (j=0; j < i; j++, i--) {
  t = buf[j];
  buf[j] = buf[i];
  buf[i] = t;
 }
 return buf;
}
