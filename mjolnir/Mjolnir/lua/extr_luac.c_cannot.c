
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char const*,char*,char*) ;
 char* output ;
 char* progname ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void cannot(const char* what)
{
 fprintf(stderr,"%s: cannot %s %s: %s\n",progname,what,output,strerror(errno));
 exit(EXIT_FAILURE);
}
