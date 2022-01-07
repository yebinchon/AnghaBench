
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int,int) ;
 int ring_size ;
 int runcycles ;
 int stderr ;

__attribute__((used)) static void help(void)
{
 fprintf(stderr, "Usage: <test> [--help]"
  " [--host-affinity H]"
  " [--guest-affinity G]"
  " [--ring-size R (default: %d)]"
  " [--run-cycles C (default: %d)]"
  " [--batch b]"
  " [--outstanding o]"
  " [--param p]"
  " [--sleep]"
  " [--relax]"
  " [--exit]"
  "\n",
  ring_size,
  runcycles);
}
