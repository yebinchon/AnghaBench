
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* _ (char*) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;
 char* strdup (char const*) ;

char *
pg_strdup(const char *in)
{
 char *tmp;

 if (!in)
 {
  fprintf(stderr,
    _("cannot duplicate null pointer (internal error)\n"));
  exit(EXIT_FAILURE);
 }
 tmp = strdup(in);
 if (!tmp)
 {
  fprintf(stderr, _("out of memory\n"));
  exit(EXIT_FAILURE);
 }
 return tmp;
}
