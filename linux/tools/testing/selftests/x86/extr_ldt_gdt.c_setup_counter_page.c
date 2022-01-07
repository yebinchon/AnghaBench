
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_32BIT ;
 int MAP_ANONYMOUS ;
 unsigned int* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 unsigned int* counter_page ;
 int err (int,char*) ;
 unsigned int* mmap (int *,int,int,int,int,int ) ;

__attribute__((used)) static void setup_counter_page(void)
{
 unsigned int *page = mmap(((void*)0), 4096, PROT_READ | PROT_WRITE,
    MAP_ANONYMOUS | MAP_PRIVATE | MAP_32BIT, -1, 0);
 if (page == MAP_FAILED)
  err(1, "mmap");

 for (int i = 0; i < 1024; i++)
  page[i] = i;
 counter_page = page;
}
