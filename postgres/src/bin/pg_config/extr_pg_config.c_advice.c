
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void
advice(void)
{
 fprintf(stderr, _("Try \"%s --help\" for more information.\n"), progname);
}
