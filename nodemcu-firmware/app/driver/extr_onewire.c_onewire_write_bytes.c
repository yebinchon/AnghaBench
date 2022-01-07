
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint16_t ;


 int onewire_write (int ,int const,int) ;
 int owDefaultPower ;

void onewire_write_bytes(uint8_t pin, const uint8_t *buf, uint16_t count, bool power ) {
  uint16_t i;
  for (i = 0 ; i < count ; i++)
    onewire_write(pin, buf[i], i < count-1 ? owDefaultPower : power);
}
