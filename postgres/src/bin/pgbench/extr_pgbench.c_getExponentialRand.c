
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int xseed; } ;
typedef TYPE_1__ RandomState ;


 int Assert (int) ;
 double exp (double) ;
 double log (double) ;
 double pg_erand48 (int ) ;

__attribute__((used)) static int64
getExponentialRand(RandomState *random_state, int64 min, int64 max,
       double parameter)
{
 double cut,
    uniform,
    rand;


 Assert(parameter > 0.0);
 cut = exp(-parameter);

 uniform = 1.0 - pg_erand48(random_state->xseed);




 Assert((1.0 - cut) != 0.0);
 rand = -log(cut + (1.0 - cut) * uniform) / parameter;

 return min + (int64) ((max - min + 1) * rand);
}
