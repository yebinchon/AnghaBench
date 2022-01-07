
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _bss_end ;
 int _bss_start ;
 int memset (int *,int ,int) ;
 int* stack ;
 int stack_end ;
 int stub_main1 () ;

void stub_main(void) {
  memset(&_bss_start, 0, (&_bss_end - &_bss_start));
  __asm volatile("movi a1, stack_end\n");
  stub_main1();

  stack[0] = stack_end = 0xff;
}
