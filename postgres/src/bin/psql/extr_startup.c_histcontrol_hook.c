
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int histcontrol; } ;


 int Assert (int ) ;
 int PsqlVarEnumError (char*,char const*,char*) ;
 int hctl_ignoreboth ;
 int hctl_ignoredups ;
 int hctl_ignorespace ;
 int hctl_none ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
histcontrol_hook(const char *newval)
{
 Assert(newval != ((void*)0));
 if (pg_strcasecmp(newval, "ignorespace") == 0)
  pset.histcontrol = hctl_ignorespace;
 else if (pg_strcasecmp(newval, "ignoredups") == 0)
  pset.histcontrol = hctl_ignoredups;
 else if (pg_strcasecmp(newval, "ignoreboth") == 0)
  pset.histcontrol = hctl_ignoreboth;
 else if (pg_strcasecmp(newval, "none") == 0)
  pset.histcontrol = hctl_none;
 else
 {
  PsqlVarEnumError("HISTCONTROL", newval,
       "none, ignorespace, ignoredups, ignoreboth");
  return 0;
 }
 return 1;
}
