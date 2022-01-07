
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int bitgen_t ;
typedef int RAND_INT_TYPE ;


 int random_hypergeometric_original (int *,int ,int ,int ) ;

int64_t legacy_random_hypergeometric(bitgen_t *bitgen_state, int64_t good,
                                     int64_t bad, int64_t sample) {
  return (int64_t)random_hypergeometric_original(bitgen_state,
                                                 (RAND_INT_TYPE)good,
                                                 (RAND_INT_TYPE)bad,
                                                 (RAND_INT_TYPE)sample);
}
