
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;



inline uint16_t pcg_rotr_16(uint16_t value, unsigned int rot) {




  return (value >> rot) | (value << ((-rot) & 15));

}
