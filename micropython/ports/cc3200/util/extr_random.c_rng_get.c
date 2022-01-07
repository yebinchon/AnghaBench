
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int lfsr (int ) ;
 int s_seed ;

uint32_t rng_get (void) {
    s_seed = lfsr( s_seed );
    return s_seed;
}
