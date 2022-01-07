
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int nr_pages ;
 int page_size ;
 scalar_t__ posix_memalign (void**,int,int) ;
 int stderr ;

__attribute__((used)) static void anon_allocate_area(void **alloc_area)
{
 if (posix_memalign(alloc_area, page_size, nr_pages * page_size)) {
  fprintf(stderr, "out of memory\n");
  *alloc_area = ((void*)0);
 }
}
