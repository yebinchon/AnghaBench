
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int bitgen_t ;
typedef int binomial_t ;
typedef int RAND_INT_TYPE ;


 int legacy_random_binomial_original (int *,double,int ,int *) ;

int64_t legacy_random_binomial(bitgen_t *bitgen_state, double p,
                               int64_t n, binomial_t *binomial) {
  return (int64_t) legacy_random_binomial_original(bitgen_state, p,
                                                   (RAND_INT_TYPE) n,
                                                   binomial);
}
