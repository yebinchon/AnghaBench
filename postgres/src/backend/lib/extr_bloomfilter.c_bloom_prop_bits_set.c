
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double uint64 ;
struct TYPE_3__ {int m; scalar_t__ bitset; } ;
typedef TYPE_1__ bloom_filter ;


 int BITS_PER_BYTE ;
 double pg_popcount (char*,int) ;

double
bloom_prop_bits_set(bloom_filter *filter)
{
 int bitset_bytes = filter->m / BITS_PER_BYTE;
 uint64 bits_set = pg_popcount((char *) filter->bitset, bitset_bytes);

 return bits_set / (double) filter->m;
}
