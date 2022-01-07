
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int comp_case; } ;


 int Assert (int ) ;
 int PSQL_COMP_CASE_LOWER ;
 int PSQL_COMP_CASE_PRESERVE_LOWER ;
 int PSQL_COMP_CASE_PRESERVE_UPPER ;
 int PSQL_COMP_CASE_UPPER ;
 int PsqlVarEnumError (char*,char const*,char*) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
comp_keyword_case_hook(const char *newval)
{
 Assert(newval != ((void*)0));
 if (pg_strcasecmp(newval, "preserve-upper") == 0)
  pset.comp_case = PSQL_COMP_CASE_PRESERVE_UPPER;
 else if (pg_strcasecmp(newval, "preserve-lower") == 0)
  pset.comp_case = PSQL_COMP_CASE_PRESERVE_LOWER;
 else if (pg_strcasecmp(newval, "upper") == 0)
  pset.comp_case = PSQL_COMP_CASE_UPPER;
 else if (pg_strcasecmp(newval, "lower") == 0)
  pset.comp_case = PSQL_COMP_CASE_LOWER;
 else
 {
  PsqlVarEnumError("COMP_KEYWORD_CASE", newval,
       "lower, upper, preserve-lower, preserve-upper");
  return 0;
 }
 return 1;
}
