
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N ;
 char** error_stack ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void error_print(void)
{
 int i;

 for (i = N-1; i >= 0; --i)
 {
  fprintf(stderr, "%s ", error_stack[i]);
 }
 fprintf(stderr, "\n");
}
