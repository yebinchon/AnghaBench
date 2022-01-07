
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;


 int platform_spi_send_recv (int,int,scalar_t__) ;

__attribute__((used)) static uint16_t _readLoop(uint8_t ctrl, uint8_t max_samples) {
  uint16_t prev = 0xffff, cur = 0xffff;
  uint8_t i = 0;
  do {
    prev = cur;
    cur = platform_spi_send_recv(1, 8 , 0);
    cur = (cur << 4) | (platform_spi_send_recv(1, 8 , ctrl) >> 4);
  } while ((prev != cur) && (++i < max_samples));
  return cur;
}
