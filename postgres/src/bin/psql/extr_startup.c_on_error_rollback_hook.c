
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int on_error_rollback; } ;


 int Assert (int ) ;
 int PSQL_ERROR_ROLLBACK_INTERACTIVE ;
 int PSQL_ERROR_ROLLBACK_OFF ;
 int PSQL_ERROR_ROLLBACK_ON ;
 scalar_t__ ParseVariableBool (char const*,int *,int*) ;
 int PsqlVarEnumError (char*,char const*,char*) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
on_error_rollback_hook(const char *newval)
{
 Assert(newval != ((void*)0));
 if (pg_strcasecmp(newval, "interactive") == 0)
  pset.on_error_rollback = PSQL_ERROR_ROLLBACK_INTERACTIVE;
 else
 {
  bool on_off;

  if (ParseVariableBool(newval, ((void*)0), &on_off))
   pset.on_error_rollback = on_off ? PSQL_ERROR_ROLLBACK_ON : PSQL_ERROR_ROLLBACK_OFF;
  else
  {
   PsqlVarEnumError("ON_ERROR_ROLLBACK", newval, "on, off, interactive");
   return 0;
  }
 }
 return 1;
}
