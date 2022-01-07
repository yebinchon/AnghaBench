
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;



inline uint64_t pcg_rotr_64(uint64_t value, unsigned int rot) {






  return (value >> rot) | (value << ((-rot) & 63));

}
