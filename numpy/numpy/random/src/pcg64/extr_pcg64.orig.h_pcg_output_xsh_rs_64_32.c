
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef int uint32_t ;



inline uint32_t pcg_output_xsh_rs_64_32(uint64_t state) {

  return (uint32_t)(((state >> 22u) ^ state) >> ((state >> 61u) + 22u));
}
