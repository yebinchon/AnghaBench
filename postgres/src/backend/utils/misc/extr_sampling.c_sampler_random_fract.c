
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SamplerRandomState ;


 double pg_erand48 (int ) ;

double
sampler_random_fract(SamplerRandomState randstate)
{
 double res;


 do
 {
  res = pg_erand48(randstate);
 } while (res == 0.0);
 return res;
}
