
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;



inline uint64_t pcg_output_rxs_m_xs_64_64(uint64_t state) {
  uint64_t word =
      ((state >> ((state >> 59u) + 5u)) ^ state) * 12605985483714917081ull;
  return (word >> 43u) ^ word;
}
