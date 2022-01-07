
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;



inline uint16_t pcg_output_rxs_m_xs_16_16(uint16_t state) {
  uint16_t word = ((state >> ((state >> 13u) + 3u)) ^ state) * 62169u;
  return (word >> 11u) ^ word;
}
