
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitgen_t ;
typedef double RAND_INT_TYPE ;


 double D1 ;
 double D2 ;
 double MAX (double,double) ;
 double MIN (double,double) ;
 double floor (double) ;
 double log (double) ;
 double next_double (int *) ;
 double random_loggam (double) ;
 double sqrt (double) ;

__attribute__((used)) static RAND_INT_TYPE random_hypergeometric_hrua(bitgen_t *bitgen_state,
                                                RAND_INT_TYPE good,
                                                RAND_INT_TYPE bad,
                                                RAND_INT_TYPE sample) {
  RAND_INT_TYPE mingoodbad, maxgoodbad, popsize, m, d9;
  double d4, d5, d6, d7, d8, d10, d11;
  RAND_INT_TYPE Z;
  double T, W, X, Y;

  mingoodbad = MIN(good, bad);
  popsize = good + bad;
  maxgoodbad = MAX(good, bad);
  m = MIN(sample, popsize - sample);
  d4 = ((double)mingoodbad) / popsize;
  d5 = 1.0 - d4;
  d6 = m * d4 + 0.5;
  d7 = sqrt((double)(popsize - m) * sample * d4 * d5 / (popsize - 1) + 0.5);
  d8 = D1 * d7 + D2;
  d9 = (RAND_INT_TYPE)floor((double)(m + 1) * (mingoodbad + 1) / (popsize + 2));
  d10 = (random_loggam(d9 + 1) + random_loggam(mingoodbad - d9 + 1) +
         random_loggam(m - d9 + 1) + random_loggam(maxgoodbad - m + d9 + 1));
  d11 = MIN(MIN(m, mingoodbad) + 1.0, floor(d6 + 16 * d7));


  while (1) {
    X = next_double(bitgen_state);
    Y = next_double(bitgen_state);
    W = d6 + d8 * (Y - 0.5) / X;


    if ((W < 0.0) || (W >= d11))
      continue;

    Z = (RAND_INT_TYPE)floor(W);
    T = d10 - (random_loggam(Z + 1) + random_loggam(mingoodbad - Z + 1) +
               random_loggam(m - Z + 1) + random_loggam(maxgoodbad - m + Z + 1));


    if ((X * (4.0 - X) - 3.0) <= T)
      break;


    if (X * (X - T) >= 1)
      continue;

    if (2.0 * log(X) <= T)
      break;
  }


  if (good > bad)
    Z = m - Z;


  if (m < sample)
    Z = good - Z;

  return Z;
}
