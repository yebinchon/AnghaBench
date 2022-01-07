
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;


 int S_ARRAY_SIZE (int ) ;
 scalar_t__ UT32_MAX ;
 int ht_primes_sizes ;

__attribute__((used)) static inline ut32 next_idx(ut32 idx) {
 if (idx != UT32_MAX && idx < S_ARRAY_SIZE (ht_primes_sizes) - 1) {
  return idx + 1;
 }
 return UT32_MAX;
}
