
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SLIP_send (int*,int) ;
 int _bss_end ;
 int _bss_start ;
 int* buf ;
 int* hello ;
 int memset (int *,int ,int) ;

void stub_main(void) {
  uint32_t greeting = 0x4941484f;
  SLIP_send(&greeting, 4);
  memset(&_bss_start, 0, (&_bss_end - &_bss_start));
  buf[1] = 123;
  SLIP_send(hello, 5);
  while (1) {
  }
}
