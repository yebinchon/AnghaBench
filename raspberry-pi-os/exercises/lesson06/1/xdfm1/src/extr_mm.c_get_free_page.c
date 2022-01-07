
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOW_MEMORY ;
 int PAGE_SIZE ;
 int PAGING_PAGES ;
 scalar_t__ VA_START ;
 int* mem_map ;
 int memzero (scalar_t__,int) ;

unsigned long get_free_page()
{
 for (int i = 0; i < PAGING_PAGES; i++){
  if (mem_map[i] == 0){
   mem_map[i] = 1;
   unsigned long page = LOW_MEMORY + i*PAGE_SIZE;
   memzero(page + VA_START, PAGE_SIZE);
   return page;
  }
 }
 return 0;
}
