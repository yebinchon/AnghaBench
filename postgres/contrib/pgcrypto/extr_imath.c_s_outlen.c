
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t mp_size ;
typedef scalar_t__ mp_result ;
typedef int mp_int ;


 size_t MP_MAX_RADIX ;
 size_t MP_MIN_RADIX ;
 int assert (int) ;
 scalar_t__ mp_int_count_bits (int ) ;
 double* s_log2 ;

__attribute__((used)) static int
s_outlen(mp_int z, mp_size r)
{
 assert(r >= MP_MIN_RADIX && r <= MP_MAX_RADIX);

 mp_result bits = mp_int_count_bits(z);
 double raw = (double) bits * s_log2[r];

 return (int) (raw + 0.999999);
}
