
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int verbosity; scalar_t__ db; } ;


 int Assert (int ) ;
 int PQERRORS_DEFAULT ;
 int PQERRORS_SQLSTATE ;
 int PQERRORS_TERSE ;
 int PQERRORS_VERBOSE ;
 int PQsetErrorVerbosity (scalar_t__,int ) ;
 int PsqlVarEnumError (char*,char const*,char*) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
verbosity_hook(const char *newval)
{
 Assert(newval != ((void*)0));
 if (pg_strcasecmp(newval, "default") == 0)
  pset.verbosity = PQERRORS_DEFAULT;
 else if (pg_strcasecmp(newval, "verbose") == 0)
  pset.verbosity = PQERRORS_VERBOSE;
 else if (pg_strcasecmp(newval, "terse") == 0)
  pset.verbosity = PQERRORS_TERSE;
 else if (pg_strcasecmp(newval, "sqlstate") == 0)
  pset.verbosity = PQERRORS_SQLSTATE;
 else
 {
  PsqlVarEnumError("VERBOSITY", newval, "default, verbose, terse, sqlstate");
  return 0;
 }

 if (pset.db)
  PQsetErrorVerbosity(pset.db, pset.verbosity);
 return 1;
}
