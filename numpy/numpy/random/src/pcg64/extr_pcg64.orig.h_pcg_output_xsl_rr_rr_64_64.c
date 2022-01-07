
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef unsigned int uint32_t ;


 unsigned int pcg_rotr_32 (unsigned int,unsigned int) ;

inline uint64_t pcg_output_xsl_rr_rr_64_64(uint64_t state) {
  uint32_t rot1 = (uint32_t)(state >> 59u);
  uint32_t high = (uint32_t)(state >> 32u);
  uint32_t low = (uint32_t)state;
  uint32_t xored = high ^ low;
  uint32_t newlow = pcg_rotr_32(xored, rot1);
  uint32_t newhigh = pcg_rotr_32(high, newlow & 31u);
  return (((uint64_t)newhigh) << 32u) | newlow;
}
