
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int EXIT_FAILURE ;
 char* _ (char*) ;
 int appendShellStringNoError (int ,char const*) ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

void
appendShellString(PQExpBuffer buf, const char *str)
{
 if (!appendShellStringNoError(buf, str))
 {
  fprintf(stderr,
    _("shell command argument contains a newline or carriage return: \"%s\"\n"),
    str);
  exit(EXIT_FAILURE);
 }
}
