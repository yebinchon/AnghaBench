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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int*) ; 

__attribute__((used)) static uint32_t FUNC3() {
    uint32_t seed;
    int done = 0;

#if !defined(_WIN32) && defined(USE_URANDOM)
    if (seed_from_urandom(&seed) == 0)
        done = 1;
#endif

#if defined(_WIN32) && defined(USE_WINDOWS_CRYPTOAPI)
    if (seed_from_windows_cryptoapi(&seed) == 0)
        done = 1;
#endif

    if (!done) {
        /* Fall back to timestamp and PID if no better randomness is
           available */
        FUNC0(&seed);
    }

    /* Make sure the seed is never zero */
    if (seed == 0)
        seed = 1;

    return seed;
}