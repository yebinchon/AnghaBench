
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int pcg128_t ;



inline pcg128_t pcg_rotr_128(pcg128_t value, unsigned int rot) {
  return (value >> rot) | (value << ((-rot) & 127));
}
