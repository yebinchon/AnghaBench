
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int bitgen_t ;


 int random_zipf (int *,double) ;

int64_t legacy_random_zipf(bitgen_t *bitgen_state, double a) {
  return (int64_t)random_zipf(bitgen_state, a);
}
