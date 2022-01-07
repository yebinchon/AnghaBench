
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* SamplerRandomState ;



void
sampler_random_init_state(long seed, SamplerRandomState randstate)
{
 randstate[0] = 0x330e;
 randstate[1] = (unsigned short) seed;
 randstate[2] = (unsigned short) (seed >> 16);
}
