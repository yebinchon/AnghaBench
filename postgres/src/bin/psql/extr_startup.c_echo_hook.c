
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int echo; } ;


 int Assert (int ) ;
 int PSQL_ECHO_ALL ;
 int PSQL_ECHO_ERRORS ;
 int PSQL_ECHO_NONE ;
 int PSQL_ECHO_QUERIES ;
 int PsqlVarEnumError (char*,char const*,char*) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
echo_hook(const char *newval)
{
 Assert(newval != ((void*)0));
 if (pg_strcasecmp(newval, "queries") == 0)
  pset.echo = PSQL_ECHO_QUERIES;
 else if (pg_strcasecmp(newval, "errors") == 0)
  pset.echo = PSQL_ECHO_ERRORS;
 else if (pg_strcasecmp(newval, "all") == 0)
  pset.echo = PSQL_ECHO_ALL;
 else if (pg_strcasecmp(newval, "none") == 0)
  pset.echo = PSQL_ECHO_NONE;
 else
 {
  PsqlVarEnumError("ECHO", newval, "none, errors, queries, all");
  return 0;
 }
 return 1;
}
