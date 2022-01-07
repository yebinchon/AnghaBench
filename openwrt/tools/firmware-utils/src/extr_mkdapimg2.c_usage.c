
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

void
usage()
{
 fprintf(stderr, "usage: %s -s signature [-v version] [-r region] [-k uImage part size] -i <input> -o <output>\n", progname);
 exit(1);
}
