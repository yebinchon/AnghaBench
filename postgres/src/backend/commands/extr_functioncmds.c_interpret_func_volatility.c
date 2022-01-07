
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arg; } ;
typedef TYPE_1__ DefElem ;


 int ERROR ;
 char PROVOLATILE_IMMUTABLE ;
 char PROVOLATILE_STABLE ;
 char PROVOLATILE_VOLATILE ;
 int elog (int ,char*,char*) ;
 char* strVal (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static char
interpret_func_volatility(DefElem *defel)
{
 char *str = strVal(defel->arg);

 if (strcmp(str, "immutable") == 0)
  return PROVOLATILE_IMMUTABLE;
 else if (strcmp(str, "stable") == 0)
  return PROVOLATILE_STABLE;
 else if (strcmp(str, "volatile") == 0)
  return PROVOLATILE_VOLATILE;
 else
 {
  elog(ERROR, "invalid volatility \"%s\"", str);
  return 0;
 }
}
