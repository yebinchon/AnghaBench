
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* _ (char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void
memory_exhausted(const char *msg)
{
 fprintf(stderr, _("%s: Memory exhausted: %s\n"), progname, msg);
 exit(EXIT_FAILURE);
}
