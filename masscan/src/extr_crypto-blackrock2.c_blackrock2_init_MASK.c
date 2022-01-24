#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  double uint64_t ;
struct BlackRock {double range; double a; unsigned long long a_mask; double b; unsigned int rounds; double seed; scalar_t__ b_mask; void* b_bits; void* a_bits; } ;

/* Variables and functions */
 void* FUNC0 (double) ; 
 double FUNC1 (double) ; 
 scalar_t__ FUNC2 (double) ; 

void
FUNC3(struct BlackRock *br, uint64_t range, uint64_t seed, unsigned rounds)
{
    uint64_t a;
    uint64_t b;

    a = FUNC1(
                                (uint64_t)FUNC2(range * 1.0)
                          );
    b = FUNC1(range/a);

    //printf("a=%llu b=%llu seed = 0x%llu\n", a, b, seed);

    br->range = range;

    br->a = a;
    br->a_bits = FUNC0(br->a);
    br->a_mask = br->a - 1ULL;

    br->b = b;
    br->b_bits = FUNC0(br->b);
    br->b_mask = br->b - 1ULL;

    //printf("a: 0x%llx / %llu\n", br->a_mask, br->a_bits);
    //printf("b: 0x%llx / %llu\n", br->b_mask, br->b_bits);

    br->rounds = rounds;
    br->seed = seed;
    br->range = range;
}