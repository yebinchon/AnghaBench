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
struct ao_pull_state {int /*<<< orphan*/ * buffers; int /*<<< orphan*/  draining; int /*<<< orphan*/  state; } ;
struct ao {scalar_t__ bps; struct ao_pull_state* api_priv; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ao*) ; 

__attribute__((used)) static void FUNC8(struct ao *ao)
{
    struct ao_pull_state *p = ao->api_priv;
    int state = FUNC1(&p->state);
    if (FUNC0(state)) {
        FUNC2(&p->draining, true);
        // Wait for lower bound.
        FUNC5(FUNC4(p->buffers[0]) / (double)ao->bps * 1e6);
        // And then poll for actual end. (Unfortunately, this code considers
        // audio APIs which do not want you to use mutexes in the audio
        // callback, and an extra semaphore would require slightly more effort.)
        // Limit to arbitrary ~250ms max. waiting for robustness.
        int64_t max = FUNC6() + 250000;
        while (FUNC6() < max && !FUNC3(ao))
            FUNC5(1);
    }
    FUNC7(ao);
}