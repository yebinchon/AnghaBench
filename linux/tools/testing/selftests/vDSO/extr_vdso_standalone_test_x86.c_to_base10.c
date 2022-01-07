
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;



void to_base10(char *lastdig, time_t n)
{
 while (n) {
  *lastdig = (n % 10) + '0';
  n /= 10;
  lastdig--;
 }
}
