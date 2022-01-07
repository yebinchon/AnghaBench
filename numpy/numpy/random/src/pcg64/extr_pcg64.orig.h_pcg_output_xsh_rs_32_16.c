
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int uint16_t ;



inline uint16_t pcg_output_xsh_rs_32_16(uint32_t state) {
  return (uint16_t)(((state >> 11u) ^ state) >> ((state >> 30u) + 11u));
}
