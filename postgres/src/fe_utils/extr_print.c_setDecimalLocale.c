
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lconv {int* grouping; scalar_t__* thousands_sep; scalar_t__* decimal_point; } ;


 char* decimal_point ;
 int groupdigits ;
 struct lconv* localeconv () ;
 void* pg_strdup (scalar_t__*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* thousands_sep ;

void
setDecimalLocale(void)
{
 struct lconv *extlconv;

 extlconv = localeconv();


 if (*extlconv->decimal_point)
  decimal_point = pg_strdup(extlconv->decimal_point);
 else
  decimal_point = ".";
 groupdigits = *extlconv->grouping;
 if (groupdigits <= 0 || groupdigits > 6)
  groupdigits = 3;



 if (*extlconv->thousands_sep)
  thousands_sep = pg_strdup(extlconv->thousands_sep);

 else if (strcmp(decimal_point, ",") != 0)
  thousands_sep = ",";
 else
  thousands_sep = ".";
}
