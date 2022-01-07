
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long atoi (char*) ;
 int do_exec (unsigned long) ;
 int dscr_inherit_exec ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* prog ;
 int stderr ;
 int strcmp (char*,char*) ;
 int test_harness (int ,char*) ;

int main(int argc, char *argv[])
{
 if (argc == 3 && !strcmp(argv[1], "exec")) {
  unsigned long parent_dscr;

  parent_dscr = atoi(argv[2]);
  do_exec(parent_dscr);
 } else if (argc != 1) {
  fprintf(stderr, "Usage: %s\n", argv[0]);
  exit(1);
 }

 prog = argv[0];
 return test_harness(dscr_inherit_exec, "dscr_inherit_exec_test");
}
