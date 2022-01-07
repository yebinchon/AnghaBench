
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int xseed; } ;
typedef TYPE_1__ RandomState ;


 double log (double) ;
 double pg_erand48 (int ) ;

__attribute__((used)) static int64
getPoissonRand(RandomState *random_state, double center)
{




 double uniform;


 uniform = 1.0 - pg_erand48(random_state->xseed);

 return (int64) (-log(uniform) * center + 0.5);
}
