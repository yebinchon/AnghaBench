
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int fprintf (int ,char*) ;
 void* mmap (int *,int,int,int,int,int ) ;
 int nr_pages ;
 int page_size ;
 int stderr ;

__attribute__((used)) static void shmem_allocate_area(void **alloc_area)
{
 *alloc_area = mmap(((void*)0), nr_pages * page_size, PROT_READ | PROT_WRITE,
      MAP_ANONYMOUS | MAP_SHARED, -1, 0);
 if (*alloc_area == MAP_FAILED) {
  fprintf(stderr, "shared memory mmap failed\n");
  *alloc_area = ((void*)0);
 }
}
