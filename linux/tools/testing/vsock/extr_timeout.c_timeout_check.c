
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 scalar_t__ timeout ;

void timeout_check(const char *operation)
{
 if (timeout) {
  fprintf(stderr, "%s timed out\n", operation);
  exit(EXIT_FAILURE);
 }
}
