
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef unsigned int uint32_t ;
typedef unsigned int pcg128_t ;


 unsigned int pcg_rotr_64 (unsigned int,unsigned int) ;

inline pcg128_t pcg_output_xsl_rr_rr_128_128(pcg128_t state) {
  uint32_t rot1 = (uint32_t)(state >> 122u);
  uint64_t high = (uint64_t)(state >> 64u);
  uint64_t low = (uint64_t)state;
  uint64_t xored = high ^ low;
  uint64_t newlow = pcg_rotr_64(xored, rot1);
  uint64_t newhigh = pcg_rotr_64(high, newlow & 63u);
  return (((pcg128_t)newhigh) << 64u) | newlow;
}
