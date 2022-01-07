
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef int uint32_t ;


 int pcg_rotr_32 (int,unsigned int) ;

inline uint32_t pcg_output_xsl_rr_64_32(uint64_t state) {
  return pcg_rotr_32(((uint32_t)(state >> 32u)) ^ (uint32_t)state,
                     state >> 59u);
}
