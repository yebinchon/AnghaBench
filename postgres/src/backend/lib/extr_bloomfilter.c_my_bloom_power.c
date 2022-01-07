
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;



__attribute__((used)) static int
my_bloom_power(uint64 target_bitset_bits)
{
 int bloom_power = -1;

 while (target_bitset_bits > 0 && bloom_power < 32)
 {
  bloom_power++;
  target_bitset_bits >>= 1;
 }

 return bloom_power;
}
