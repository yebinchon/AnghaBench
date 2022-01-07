
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HIGH_ADDR_MARK ;
 int printf (char*,unsigned long) ;

__attribute__((used)) static int validate_addr(char *ptr, int high_addr)
{
 unsigned long addr = (unsigned long) ptr;

 if (high_addr) {
  if (addr < HIGH_ADDR_MARK) {
   printf("Bad address %lx\n", addr);
   return 1;
  }
  return 0;
 }

 if (addr > HIGH_ADDR_MARK) {
  printf("Bad address %lx\n", addr);
  return 1;
 }
 return 0;
}
