
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;



inline uint32_t pcg_rotr_32(uint32_t value, unsigned int rot) {




  return (value >> rot) | (value << ((-rot) & 31));

}
