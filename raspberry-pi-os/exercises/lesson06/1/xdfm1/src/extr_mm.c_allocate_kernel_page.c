
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long VA_START ;
 unsigned long get_free_page () ;

unsigned long allocate_kernel_page() {
 unsigned long page = get_free_page();
 if (page == 0) {
  return 0;
 }
 return page + VA_START;
}
