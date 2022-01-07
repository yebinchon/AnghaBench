
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;



__attribute__((used)) static void inc_month(timelib_sll *y, timelib_sll *m)
{
 (*m)++;
 if (*m > 12) {
  *m -= 12;
  (*y)++;
 }
}
