
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint16_t ;



inline uint8_t pcg_output_xsh_rs_16_8(uint16_t state) {
  return (uint8_t)(((state >> 7u) ^ state) >> ((state >> 14u) + 3u));
}
