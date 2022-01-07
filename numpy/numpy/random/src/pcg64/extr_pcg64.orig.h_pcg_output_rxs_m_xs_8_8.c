
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;



inline uint8_t pcg_output_rxs_m_xs_8_8(uint8_t state) {
  uint8_t word = ((state >> ((state >> 6u) + 2u)) ^ state) * 217u;
  return (word >> 6u) ^ word;
}
