
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int pcg128_t ;


 unsigned int PCG_128BIT_CONSTANT (unsigned long long,unsigned long long) ;

inline pcg128_t pcg_output_rxs_m_xs_128_128(pcg128_t state) {
  pcg128_t word =
      ((state >> ((state >> 122u) + 6u)) ^ state) *
      (PCG_128BIT_CONSTANT(17766728186571221404ULL, 12605985483714917081ULL));

  return (word >> 86u) ^ word;
}
