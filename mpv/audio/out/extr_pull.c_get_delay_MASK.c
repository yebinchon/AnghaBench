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
struct ao_pull_state {int /*<<< orphan*/ * buffers; int /*<<< orphan*/  end_time_us; } ;
struct ao {scalar_t__ bps; struct ao_pull_state* api_priv; } ;
typedef  double int64_t ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,double) ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 double FUNC3 () ; 

__attribute__((used)) static double FUNC4(struct ao *ao)
{
    struct ao_pull_state *p = ao->api_priv;

    int64_t end = FUNC1(&p->end_time_us);
    int64_t now = FUNC3();
    double driver_delay = FUNC0(0, (end - now) / (1000.0 * 1000.0));
    return FUNC2(p->buffers[0]) / (double)ao->bps + driver_delay;
}