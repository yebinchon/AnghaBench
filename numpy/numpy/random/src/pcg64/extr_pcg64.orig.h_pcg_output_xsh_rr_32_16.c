
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int uint16_t ;


 int pcg_rotr_16 (unsigned int,unsigned int) ;

inline uint16_t pcg_output_xsh_rr_32_16(uint32_t state) {
  return pcg_rotr_16(((state >> 10u) ^ state) >> 12u, state >> 28u);
}
