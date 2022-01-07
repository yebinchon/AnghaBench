
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rule {scalar_t__ r_hiyear; scalar_t__ r_month; int r_dayofmonth; } ;



__attribute__((used)) static int
rule_cmp(struct rule const *a, struct rule const *b)
{
 if (!a)
  return -!!b;
 if (!b)
  return 1;
 if (a->r_hiyear != b->r_hiyear)
  return a->r_hiyear < b->r_hiyear ? -1 : 1;
 if (a->r_month - b->r_month != 0)
  return a->r_month - b->r_month;
 return a->r_dayofmonth - b->r_dayofmonth;
}
