
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int onewire_write_bit (int,int,int) ;

void onewire_write(uint8_t pin, uint8_t v, uint8_t power ) {
  uint8_t bitMask;

  for (bitMask = 0x01; bitMask; bitMask <<= 1) {

    onewire_write_bit(pin, (bitMask & v)?1:0, bitMask & 0x80 ? power : 0);
  }
}
