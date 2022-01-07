
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lconv {int * negative_sign; int * positive_sign; int * mon_grouping; int * mon_thousands_sep; int * mon_decimal_point; int * currency_symbol; int * int_curr_symbol; int * grouping; int * thousands_sep; int * decimal_point; } ;



__attribute__((used)) static bool
struct_lconv_is_valid(struct lconv *s)
{
 if (s->decimal_point == ((void*)0))
  return 0;
 if (s->thousands_sep == ((void*)0))
  return 0;
 if (s->grouping == ((void*)0))
  return 0;
 if (s->int_curr_symbol == ((void*)0))
  return 0;
 if (s->currency_symbol == ((void*)0))
  return 0;
 if (s->mon_decimal_point == ((void*)0))
  return 0;
 if (s->mon_thousands_sep == ((void*)0))
  return 0;
 if (s->mon_grouping == ((void*)0))
  return 0;
 if (s->positive_sign == ((void*)0))
  return 0;
 if (s->negative_sign == ((void*)0))
  return 0;
 return 1;
}
