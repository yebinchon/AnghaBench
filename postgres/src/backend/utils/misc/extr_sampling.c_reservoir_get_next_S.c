
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double W; int randstate; } ;
typedef TYPE_1__* ReservoirState ;


 double exp (int) ;
 double floor (double) ;
 int log (double) ;
 double sampler_random_fract (int ) ;

double
reservoir_get_next_S(ReservoirState rs, double t, int n)
{
 double S;


 if (t <= (22.0 * n))
 {

  double V,
     quot;

  V = sampler_random_fract(rs->randstate);
  S = 0;
  t += 1;

  quot = (t - (double) n) / t;

  while (quot > V)
  {
   S += 1;
   t += 1;
   quot *= (t - (double) n) / t;
  }
 }
 else
 {

  double W = rs->W;
  double term = t - (double) n + 1;

  for (;;)
  {
   double numer,
      numer_lim,
      denom;
   double U,
      X,
      lhs,
      rhs,
      y,
      tmp;


   U = sampler_random_fract(rs->randstate);
   X = t * (W - 1.0);
   S = floor(X);

   tmp = (t + 1) / term;
   lhs = exp(log(((U * tmp * tmp) * (term + S)) / (t + X)) / n);
   rhs = (((t + X) / (term + S)) * term) / t;
   if (lhs <= rhs)
   {
    W = rhs / lhs;
    break;
   }

   y = (((U * (t + 1)) / term) * (t + S + 1)) / (t + X);
   if ((double) n < S)
   {
    denom = t;
    numer_lim = term + S;
   }
   else
   {
    denom = t - (double) n + S;
    numer_lim = t + 1;
   }
   for (numer = t + S; numer >= numer_lim; numer -= 1)
   {
    y *= numer / denom;
    denom -= 1;
   }
   W = exp(-log(sampler_random_fract(rs->randstate)) / n);
   if (exp(log(y) / n) <= (t + X) / t)
    break;
  }
  rs->W = W;
 }
 return S;
}
