
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int show_context; scalar_t__ db; } ;


 int Assert (int ) ;
 int PQSHOW_CONTEXT_ALWAYS ;
 int PQSHOW_CONTEXT_ERRORS ;
 int PQSHOW_CONTEXT_NEVER ;
 int PQsetErrorContextVisibility (scalar_t__,int ) ;
 int PsqlVarEnumError (char*,char const*,char*) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
show_context_hook(const char *newval)
{
 Assert(newval != ((void*)0));
 if (pg_strcasecmp(newval, "never") == 0)
  pset.show_context = PQSHOW_CONTEXT_NEVER;
 else if (pg_strcasecmp(newval, "errors") == 0)
  pset.show_context = PQSHOW_CONTEXT_ERRORS;
 else if (pg_strcasecmp(newval, "always") == 0)
  pset.show_context = PQSHOW_CONTEXT_ALWAYS;
 else
 {
  PsqlVarEnumError("SHOW_CONTEXT", newval, "never, errors, always");
  return 0;
 }

 if (pset.db)
  PQsetErrorContextVisibility(pset.db, pset.show_context);
 return 1;
}
