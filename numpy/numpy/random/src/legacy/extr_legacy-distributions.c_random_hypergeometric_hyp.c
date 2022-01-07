
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitgen_t ;
typedef double RAND_INT_TYPE ;


 scalar_t__ MIN (double,double) ;
 scalar_t__ floor (double) ;
 double next_double (int *) ;

__attribute__((used)) static RAND_INT_TYPE random_hypergeometric_hyp(bitgen_t *bitgen_state,
                                               RAND_INT_TYPE good,
                                               RAND_INT_TYPE bad,
                                               RAND_INT_TYPE sample) {
  RAND_INT_TYPE d1, k, z;
  double d2, u, y;

  d1 = bad + good - sample;
  d2 = (double)MIN(bad, good);

  y = d2;
  k = sample;
  while (y > 0.0) {
    u = next_double(bitgen_state);
    y -= (RAND_INT_TYPE)floor(u + y / (d1 + k));
    k--;
    if (k == 0)
      break;
  }
  z = (RAND_INT_TYPE)(d2 - y);
  if (good > bad)
    z = sample - z;
  return z;
}
