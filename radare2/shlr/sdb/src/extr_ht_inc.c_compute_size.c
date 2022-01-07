
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut32 ;


 size_t S_ARRAY_SIZE (size_t*) ;
 size_t UT32_MAX ;
 size_t* ht_primes_sizes ;

__attribute__((used)) static inline ut32 compute_size(ut32 idx, ut32 sz) {


 return idx != UT32_MAX && idx < S_ARRAY_SIZE(ht_primes_sizes) ? ht_primes_sizes[idx] : (sz | 1);
}
