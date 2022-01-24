#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int range; unsigned int iterations; double critical; } ;
typedef  size_t BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*) ; 
 scalar_t__ FUNC1 (size_t*) ; 
 size_t* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (size_t*) ; 
 size_t* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,double,double const) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,unsigned int const,unsigned int const) ; 
 int /*<<< orphan*/  FUNC9 (size_t*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,unsigned int const) ; 
 TYPE_1__* rand_range_cases ; 

__attribute__((used)) static int FUNC12(size_t n)
{
    const unsigned int range = rand_range_cases[n].range;
    const unsigned int iterations = rand_range_cases[n].iterations;
    const double critical = rand_range_cases[n].critical;
    const double expected = iterations / (double)range;
    double sum = 0;
    BIGNUM *rng = NULL, *val = NULL;
    size_t *counts;
    unsigned int i, v;
    int res = 0;

    if (!FUNC9(counts = FUNC6(sizeof(*counts) * range))
        || !FUNC9(rng = FUNC2())
        || !FUNC9(val = FUNC2())
        || !FUNC10(FUNC4(rng, range)))
        goto err;
    for (i = 0; i < iterations; i++) {
        if (!FUNC10(FUNC3(val, rng))
            || !FUNC11(v = (unsigned int)FUNC1(val), range))
            goto err;
        counts[v]++;
    }

    for (i = 0; i < range; i++) {
        const double delta = counts[i] - expected;
        sum += delta * delta;
    }
    sum /= expected;

    if (sum > critical) {
        FUNC7("Chi^2 test negative %.4f > %4.f", sum, critical);
        FUNC8("test case %zu  range %u  iterations %u", n + 1, range,
                  iterations);
        goto err;
    }

    res = 1;
err:
    FUNC0(rng);
    FUNC0(val);
    FUNC5(counts);
    return res;
}