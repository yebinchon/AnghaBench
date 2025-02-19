
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
date2j(int y, int m, int d)
{
 int julian;
 int century;

 if (m > 2)
 {
  m += 1;
  y += 4800;
 }
 else
 {
  m += 13;
  y += 4799;
 }

 century = y / 100;
 julian = y * 365 - 32167;
 julian += y / 4 - century + century / 4;
 julian += 7834 * m / 256 + d;

 return julian;
}
