
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ onewire_read_bit (int) ;

uint8_t onewire_read(uint8_t pin) {
  uint8_t bitMask;
  uint8_t r = 0;

  for (bitMask = 0x01; bitMask; bitMask <<= 1) {
   if (onewire_read_bit(pin)) r |= bitMask;
  }
  return r;
}
