
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;



uint16_t jboot_checksum(uint16_t start_val, uint16_t *data, int size)
{
 uint32_t counter = start_val;
 uint16_t *ptr = data;

 while (size > 1) {
  counter += *ptr;
  ++ptr;
  while (counter >> 16)
   counter = (uint16_t) counter + (counter >> 16);
  size -= 2;
 }
 if (size > 0) {
  counter += *(uint8_t *) ptr;
  counter -= 0xFF;
 }
 while (counter >> 16)
  counter = (uint16_t) counter + (counter >> 16);
 return counter;
}
