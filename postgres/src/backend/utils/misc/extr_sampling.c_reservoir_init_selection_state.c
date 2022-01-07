
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int randstate; int W; } ;
typedef TYPE_1__* ReservoirState ;


 int exp (int) ;
 int log (int ) ;
 int random () ;
 int sampler_random_fract (int ) ;
 int sampler_random_init_state (int ,int ) ;

void
reservoir_init_selection_state(ReservoirState rs, int n)
{




 sampler_random_init_state(random(), rs->randstate);


 rs->W = exp(-log(sampler_random_fract(rs->randstate)) / n);
}
