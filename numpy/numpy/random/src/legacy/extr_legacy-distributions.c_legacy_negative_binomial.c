
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int bit_generator; } ;
typedef TYPE_1__ aug_bitgen_t ;


 double legacy_gamma (TYPE_1__*,double,int) ;
 int random_poisson (int ,double) ;

int64_t legacy_negative_binomial(aug_bitgen_t *aug_state, double n, double p) {
  double Y = legacy_gamma(aug_state, n, (1 - p) / p);
  return (int64_t)random_poisson(aug_state->bit_generator, Y);
}
