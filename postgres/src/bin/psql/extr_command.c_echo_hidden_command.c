
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ echo_hidden; scalar_t__ logfile; } ;


 scalar_t__ PSQL_ECHO_HIDDEN_NOEXEC ;
 scalar_t__ PSQL_ECHO_HIDDEN_OFF ;
 char* _ (char*) ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,char const*) ;
 int printf (char*,char const*) ;
 TYPE_1__ pset ;
 scalar_t__ stdout ;

__attribute__((used)) static bool
echo_hidden_command(const char *query)
{
 if (pset.echo_hidden != PSQL_ECHO_HIDDEN_OFF)
 {
  printf(_("********* QUERY **********\n"
     "%s\n"
     "**************************\n\n"), query);
  fflush(stdout);
  if (pset.logfile)
  {
   fprintf(pset.logfile,
     _("********* QUERY **********\n"
       "%s\n"
       "**************************\n\n"), query);
   fflush(pset.logfile);
  }

  if (pset.echo_hidden == PSQL_ECHO_HIDDEN_NOEXEC)
   return 0;
 }
 return 1;
}
