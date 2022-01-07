
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {char* name; int * numa_partial; int * numa; int slabs; } ;


 int highest_node ;
 int line ;
 int printf (char*,...) ;
 scalar_t__ skip_zero ;
 int store_size (char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void slab_numa(struct slabinfo *s, int mode)
{
 int node;

 if (strcmp(s->name, "*") == 0)
  return;

 if (!highest_node) {
  printf("\n%s: No NUMA information available.\n", s->name);
  return;
 }

 if (skip_zero && !s->slabs)
  return;

 if (!line) {
  printf("\n%-21s:", mode ? "NUMA nodes" : "Slab");
  for(node = 0; node <= highest_node; node++)
   printf(" %4d", node);
  printf("\n----------------------");
  for(node = 0; node <= highest_node; node++)
   printf("-----");
  printf("\n");
 }
 printf("%-21s ", mode ? "All slabs" : s->name);
 for(node = 0; node <= highest_node; node++) {
  char b[20];

  store_size(b, s->numa[node]);
  printf(" %4s", b);
 }
 printf("\n");
 if (mode) {
  printf("%-21s ", "Partial slabs");
  for(node = 0; node <= highest_node; node++) {
   char b[20];

   store_size(b, s->numa_partial[node]);
   printf(" %4s", b);
  }
  printf("\n");
 }
 line++;
}
