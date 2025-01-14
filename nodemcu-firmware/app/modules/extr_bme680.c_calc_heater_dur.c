
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static uint8_t calc_heater_dur(uint16_t dur)
{
 uint8_t factor = 0;
 uint8_t durval;

 if (dur >= 0xfc0) {
  durval = 0xff;
 } else {
  while (dur > 0x3F) {
   dur = dur / 4;
   factor += 1;
  }
  durval = (uint8_t) (dur + (factor * 64));
 }

 return durval;
}
