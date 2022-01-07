
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void yield_setup(int cpu1, int cpu2)
{
 if (cpu1 != cpu2) {
  fprintf(stderr, "Both threads must be on the same CPU for yield test\n");
  exit(1);
 }
}
