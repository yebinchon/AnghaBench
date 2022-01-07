
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t ccount(void) {
  uint32_t r;
  __asm volatile("rsr.ccount %0" : "=a"(r));
  return r;
}
