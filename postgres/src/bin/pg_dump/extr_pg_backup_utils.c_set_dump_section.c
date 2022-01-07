
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_DATA ;
 int DUMP_POST_DATA ;
 int DUMP_PRE_DATA ;
 int DUMP_UNSECTIONED ;
 char* _ (char*) ;
 int exit_nicely (int) ;
 int fprintf (int ,char*,char*) ;
 int pg_log_error (char*,char const*) ;
 char* progname ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;

void
set_dump_section(const char *arg, int *dumpSections)
{

 if (*dumpSections == DUMP_UNSECTIONED)
  *dumpSections = 0;

 if (strcmp(arg, "pre-data") == 0)
  *dumpSections |= DUMP_PRE_DATA;
 else if (strcmp(arg, "data") == 0)
  *dumpSections |= DUMP_DATA;
 else if (strcmp(arg, "post-data") == 0)
  *dumpSections |= DUMP_POST_DATA;
 else
 {
  pg_log_error("unrecognized section name: \"%s\"", arg);
  fprintf(stderr, _("Try \"%s --help\" for more information.\n"),
    progname);
  exit_nicely(1);
 }
}
