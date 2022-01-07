
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {char* name; } ;


 char* buffer ;
 int printf (char*,...) ;
 scalar_t__ read_slab_obj (struct slabinfo*,char*) ;

__attribute__((used)) static void show_tracking(struct slabinfo *s)
{
 printf("\n%s: Kernel object allocation\n", s->name);
 printf("-----------------------------------------------------------------------\n");
 if (read_slab_obj(s, "alloc_calls"))
  printf("%s", buffer);
 else
  printf("No Data\n");

 printf("\n%s: Kernel object freeing\n", s->name);
 printf("------------------------------------------------------------------------\n");
 if (read_slab_obj(s, "free_calls"))
  printf("%s", buffer);
 else
  printf("No Data\n");

}
