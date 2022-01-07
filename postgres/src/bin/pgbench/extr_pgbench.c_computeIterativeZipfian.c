
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int xseed; } ;
typedef TYPE_1__ RandomState ;


 double floor (double) ;
 double pg_erand48 (int ) ;
 double pow (double,double) ;

__attribute__((used)) static int64
computeIterativeZipfian(RandomState *random_state, int64 n, double s)
{
 double b = pow(2.0, s - 1.0);
 double x,
    t,
    u,
    v;


 if (n <= 1)
  return 1;

 while (1)
 {

  u = pg_erand48(random_state->xseed);
  v = pg_erand48(random_state->xseed);

  x = floor(pow(u, -1.0 / (s - 1.0)));

  t = pow(1.0 + 1.0 / x, s - 1.0);

  if (v * x * (t - 1.0) / (b - 1.0) <= t / b && x <= n)
   break;
 }
 return (int64) x;
}
