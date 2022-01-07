
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* randstate; } ;


 TYPE_1__ oldrs ;
 int random () ;
 double sampler_random_fract (scalar_t__*) ;
 int sampler_random_init_state (int ,scalar_t__*) ;

double
anl_random_fract(void)
{

 if (oldrs.randstate[0] == 0)
  sampler_random_init_state(random(), oldrs.randstate);


 return sampler_random_fract(oldrs.randstate);
}
