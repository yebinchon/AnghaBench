
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint16_t ;


 int pcg_rotr_8 (unsigned int,unsigned int) ;

inline uint8_t pcg_output_xsh_rr_16_8(uint16_t state) {
  return pcg_rotr_8(((state >> 5u) ^ state) >> 5u, state >> 13u);
}
