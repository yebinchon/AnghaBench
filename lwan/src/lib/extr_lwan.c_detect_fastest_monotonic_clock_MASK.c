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
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC_COARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  monotonic_clock_id ; 

__attribute__((used)) __attribute__((constructor)) static void FUNC1(void)
{
    struct timespec ts;

    if (!FUNC0(CLOCK_MONOTONIC_COARSE, &ts))
        monotonic_clock_id = CLOCK_MONOTONIC_COARSE;
}