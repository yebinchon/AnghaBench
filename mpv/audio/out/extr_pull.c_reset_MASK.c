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
struct ao_pull_state {int /*<<< orphan*/  end_time_us; int /*<<< orphan*/ * buffers; } ;
struct ao {int num_planes; TYPE_1__* driver; int /*<<< orphan*/  stream_silence; struct ao_pull_state* api_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct ao*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AO_STATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*) ; 

__attribute__((used)) static void FUNC4(struct ao *ao)
{
    struct ao_pull_state *p = ao->api_priv;
    if (!ao->stream_silence && ao->driver->reset)
        ao->driver->reset(ao); // assumes the audio callback thread is stopped
    FUNC2(ao, AO_STATE_NONE);
    for (int n = 0; n < ao->num_planes; n++)
        FUNC1(p->buffers[n]);
    FUNC0(&p->end_time_us, 0);
}