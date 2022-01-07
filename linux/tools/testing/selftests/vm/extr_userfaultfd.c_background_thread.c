
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_page_retry (int ,unsigned long) ;
 unsigned long nr_pages_per_cpu ;
 unsigned long page_size ;
 int uffd ;

__attribute__((used)) static void *background_thread(void *arg)
{
 unsigned long cpu = (unsigned long) arg;
 unsigned long page_nr;

 for (page_nr = cpu * nr_pages_per_cpu;
      page_nr < (cpu+1) * nr_pages_per_cpu;
      page_nr++)
  copy_page_retry(uffd, page_nr * page_size);

 return ((void*)0);
}
