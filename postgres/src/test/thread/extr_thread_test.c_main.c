
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

int
main(int argc, char *argv[])
{
 fprintf(stderr, "This PostgreSQL build does not support threads.\n");
 fprintf(stderr, "Perhaps rerun 'configure' using '--enable-thread-safety'.\n");
 return 1;
}
