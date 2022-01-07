
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;



inline uint8_t pcg_rotr_8(uint8_t value, unsigned int rot) {
  return (value >> rot) | (value << ((-rot) & 7));

}
