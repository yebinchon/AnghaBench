
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitgen_t ;
typedef int binomial_t ;
typedef double RAND_INT_TYPE ;


 double random_binomial_btpe (int *,double,double,int *) ;
 double random_binomial_inversion (int *,double,double,int *) ;

__attribute__((used)) static RAND_INT_TYPE legacy_random_binomial_original(bitgen_t *bitgen_state,
                                                     double p,
                                                     RAND_INT_TYPE n,
                                                     binomial_t *binomial) {
  double q;

  if (p <= 0.5) {
    if (p * n <= 30.0) {
      return random_binomial_inversion(bitgen_state, n, p, binomial);
    } else {
      return random_binomial_btpe(bitgen_state, n, p, binomial);
    }
  } else {
    q = 1.0 - p;
    if (q * n <= 30.0) {
      return n - random_binomial_inversion(bitgen_state, n, q, binomial);
    } else {
      return n - random_binomial_btpe(bitgen_state, n, q, binomial);
    }
  }
}
