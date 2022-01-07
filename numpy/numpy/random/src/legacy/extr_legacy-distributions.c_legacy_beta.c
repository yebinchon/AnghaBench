
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 double exp (double) ;
 double legacy_double (int *) ;
 double legacy_standard_gamma (int *,double) ;
 double log (double) ;
 double pow (double,double) ;

double legacy_beta(aug_bitgen_t *aug_state, double a, double b) {
  double Ga, Gb;

  if ((a <= 1.0) && (b <= 1.0)) {
    double U, V, X, Y;


    while (1) {
      U = legacy_double(aug_state);
      V = legacy_double(aug_state);
      X = pow(U, 1.0 / a);
      Y = pow(V, 1.0 / b);

      if ((X + Y) <= 1.0) {
        if (X + Y > 0) {
          return X / (X + Y);
        } else {
          double logX = log(U) / a;
          double logY = log(V) / b;
          double logM = logX > logY ? logX : logY;
          logX -= logM;
          logY -= logM;

          return exp(logX - log(exp(logX) + exp(logY)));
        }
      }
    }
  } else {
    Ga = legacy_standard_gamma(aug_state, a);
    Gb = legacy_standard_gamma(aug_state, b);
    return Ga / (Ga + Gb);
  }
}
