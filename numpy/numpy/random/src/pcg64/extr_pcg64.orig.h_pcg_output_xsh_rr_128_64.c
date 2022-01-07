
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned int pcg128_t ;


 int pcg_rotr_64 (unsigned int,unsigned int) ;

inline uint64_t pcg_output_xsh_rr_128_64(pcg128_t state) {
  return pcg_rotr_64(((state >> 29u) ^ state) >> 58u, state >> 122u);
}
