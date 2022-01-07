
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short RAND48_SEED_0 ;
 unsigned short* _rand48_seed ;

void
pg_srand48(long seed)
{
 _rand48_seed[0] = RAND48_SEED_0;
 _rand48_seed[1] = (unsigned short) seed;
 _rand48_seed[2] = (unsigned short) (seed >> 16);
}
