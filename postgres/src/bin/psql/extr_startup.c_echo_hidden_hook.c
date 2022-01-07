
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int echo_hidden; } ;


 int Assert (int ) ;
 int PSQL_ECHO_HIDDEN_NOEXEC ;
 int PSQL_ECHO_HIDDEN_OFF ;
 int PSQL_ECHO_HIDDEN_ON ;
 scalar_t__ ParseVariableBool (char const*,int *,int*) ;
 int PsqlVarEnumError (char*,char const*,char*) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
echo_hidden_hook(const char *newval)
{
 Assert(newval != ((void*)0));
 if (pg_strcasecmp(newval, "noexec") == 0)
  pset.echo_hidden = PSQL_ECHO_HIDDEN_NOEXEC;
 else
 {
  bool on_off;

  if (ParseVariableBool(newval, ((void*)0), &on_off))
   pset.echo_hidden = on_off ? PSQL_ECHO_HIDDEN_ON : PSQL_ECHO_HIDDEN_OFF;
  else
  {
   PsqlVarEnumError("ECHO_HIDDEN", newval, "on, off, noexec");
   return 0;
  }
 }
 return 1;
}
