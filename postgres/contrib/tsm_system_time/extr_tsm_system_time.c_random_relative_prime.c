
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int SamplerRandomState ;


 int CHECK_FOR_INTERRUPTS () ;
 int gcd (int,int) ;
 int sampler_random_fract (int ) ;

__attribute__((used)) static uint32
random_relative_prime(uint32 n, SamplerRandomState randstate)
{
 uint32 r;


 if (n <= 1)
  return 1;






 do
 {
  CHECK_FOR_INTERRUPTS();
  r = (uint32) (sampler_random_fract(randstate) * n);
 } while (r == 0 || gcd(r, n) > 1);

 return r;
}
