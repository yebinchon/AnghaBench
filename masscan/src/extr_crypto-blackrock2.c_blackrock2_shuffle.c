
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct BlackRock {scalar_t__ range; int seed; int b_mask; int b_bits; int a_mask; int a_bits; int rounds; } ;


 scalar_t__ ENCRYPT (int ,int ,int ,int ,int ,scalar_t__,int ) ;

uint64_t
blackrock2_shuffle(const struct BlackRock *br, uint64_t m)
{
    uint64_t c;

    c = ENCRYPT(br->rounds, br->a_bits, br->a_mask, br->b_bits, br->b_mask, m, br->seed);
    while (c >= br->range)
        c = ENCRYPT(br->rounds, br->a_bits, br->a_mask, br->b_bits, br->b_mask, c, br->seed);

    return c;
}
