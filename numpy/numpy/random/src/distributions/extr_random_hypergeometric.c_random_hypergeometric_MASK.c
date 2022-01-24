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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  bitgen_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 

int64_t FUNC2(bitgen_t *bitgen_state,
                              int64_t good, int64_t bad, int64_t sample)
{
    int64_t r;

    if ((sample >= 10) && (sample <= good + bad - 10)) {
        // This will use the ratio-of-uniforms method.
        r = FUNC0(bitgen_state, good, bad, sample);
    }
    else {
        // The simpler implementation is faster for small samples.
        r = FUNC1(bitgen_state, good, bad, sample);
    }
    return r;
}