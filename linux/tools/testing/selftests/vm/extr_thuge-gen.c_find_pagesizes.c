
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gl_pathc; int * gl_pathv; } ;
typedef TYPE_1__ glob_t ;


 int NUM_PAGESIZES ;
 int assert (int) ;
 int glob (char*,int ,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int num_page_sizes ;
 int* page_sizes ;
 int printf (char*,int) ;
 int sscanf (int ,char*,int*) ;

void find_pagesizes(void)
{
 glob_t g;
 int i;
 glob("/sys/kernel/mm/hugepages/hugepages-*kB", 0, ((void*)0), &g);
 assert(g.gl_pathc <= NUM_PAGESIZES);
 for (i = 0; i < g.gl_pathc; i++) {
  sscanf(g.gl_pathv[i], "/sys/kernel/mm/hugepages/hugepages-%lukB",
    &page_sizes[i]);
  page_sizes[i] <<= 10;
  printf("Found %luMB\n", page_sizes[i] >> 20);
 }
 num_page_sizes = g.gl_pathc;
 globfree(&g);
}
