
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int xseed; } ;
typedef TYPE_1__ RandomState ;


 int Assert (int) ;
 double MIN_GAUSSIAN_PARAM ;
 double M_PI ;
 double log (double) ;
 double pg_erand48 (int ) ;
 double sin (double) ;
 double sqrt (double) ;

__attribute__((used)) static int64
getGaussianRand(RandomState *random_state, int64 min, int64 max,
    double parameter)
{
 double stdev;
 double rand;


 Assert(parameter >= MIN_GAUSSIAN_PARAM);
 do
 {






  double rand1 = 1.0 - pg_erand48(random_state->xseed);
  double rand2 = 1.0 - pg_erand48(random_state->xseed);


  double var_sqrt = sqrt(-2.0 * log(rand1));

  stdev = var_sqrt * sin(2.0 * M_PI * rand2);






 }
 while (stdev < -parameter || stdev >= parameter);


 rand = (stdev + parameter) / (parameter * 2.0);


 return min + (int64) ((max - min + 1) * rand);
}
