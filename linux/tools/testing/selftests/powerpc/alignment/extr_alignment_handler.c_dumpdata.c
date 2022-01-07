
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

void dumpdata(char *s1, char *s2, int n, char *test_name)
{
 int i;

 printf("  %s: unexpected result:\n", test_name);
 printf("    mem:");
 for (i = 0; i < n; i++)
  printf(" %02x", s1[i]);
 printf("\n");
 printf("    ci: ");
 for (i = 0; i < n; i++)
  printf(" %02x", s2[i]);
 printf("\n");
}
