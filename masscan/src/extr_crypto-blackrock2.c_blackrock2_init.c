
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint64_t ;
struct BlackRock {double range; double a; unsigned long long a_mask; double b; unsigned int rounds; double seed; scalar_t__ b_mask; void* b_bits; void* a_bits; } ;


 void* bit_count (double) ;
 double next_power_of_two (double) ;
 scalar_t__ sqrt (double) ;

void
blackrock2_init(struct BlackRock *br, uint64_t range, uint64_t seed, unsigned rounds)
{
    uint64_t a;
    uint64_t b;

    a = next_power_of_two(
                                (uint64_t)sqrt(range * 1.0)
                          );
    b = next_power_of_two(range/a);



    br->range = range;

    br->a = a;
    br->a_bits = bit_count(br->a);
    br->a_mask = br->a - 1ULL;

    br->b = b;
    br->b_bits = bit_count(br->b);
    br->b_mask = br->b - 1ULL;




    br->rounds = rounds;
    br->seed = seed;
    br->range = range;
}
