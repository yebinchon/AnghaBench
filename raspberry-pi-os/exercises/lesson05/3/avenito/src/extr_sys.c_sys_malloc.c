
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long get_free_page () ;

unsigned long sys_malloc(){
 unsigned long addr = get_free_page();
 if (!addr) {
  return -1;
 }
 return addr;
}
