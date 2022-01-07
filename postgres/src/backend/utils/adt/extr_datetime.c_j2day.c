
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
j2day(int date)
{
 date += 1;
 date %= 7;

 if (date < 0)
  date += 7;

 return date;
}
