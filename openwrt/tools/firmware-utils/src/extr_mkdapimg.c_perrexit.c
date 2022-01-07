
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 char* progname ;
 int stderr ;
 char* strerror (int ) ;

void
perrexit(int code, char *msg)
{
 fprintf(stderr, "%s: %s: %s\n", progname, msg, strerror(errno));
 exit(code);
}
