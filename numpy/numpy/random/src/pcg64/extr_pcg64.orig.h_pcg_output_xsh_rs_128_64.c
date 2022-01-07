
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned int pcg128_t ;



inline uint64_t pcg_output_xsh_rs_128_64(pcg128_t state) {
  return (uint64_t)(((state >> 43u) ^ state) >> ((state >> 124u) + 45u));
}
