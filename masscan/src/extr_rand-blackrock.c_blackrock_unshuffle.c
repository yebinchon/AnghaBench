
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct BlackRock {scalar_t__ range; int seed; int b; int a; int rounds; } ;


 scalar_t__ UNENCRYPT (int ,int ,int ,scalar_t__,int ) ;

uint64_t
blackrock_unshuffle(const struct BlackRock *br, uint64_t m)
{
    uint64_t c;

    c = UNENCRYPT(br->rounds, br->a, br->b, m, br->seed);
    while (c >= br->range)
        c = UNENCRYPT(br->rounds, br->a, br->b, c, br->seed);

    return c;
}
