
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;


 void* platform_spi_send_recv (int,int,void*) ;

__attribute__((used)) static uint16_t transfer16(uint16_t _data) {
  union { uint16_t val; struct { uint8_t lsb; uint8_t msb; }; } t;
  t.val = _data;
  t.msb = platform_spi_send_recv(1, 8, t.msb);
  t.lsb = platform_spi_send_recv(1, 8, t.lsb);
  return t.val;
}
