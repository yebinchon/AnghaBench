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
struct ao_pull_state {int /*<<< orphan*/  underflow; int /*<<< orphan*/  draining; int /*<<< orphan*/  state; int /*<<< orphan*/ * buffers; } ;
struct ao {int sstride; int num_planes; TYPE_1__* driver; int /*<<< orphan*/  stream_silence; struct ao_pull_state* api_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* resume ) (struct ao*) ;} ;

/* Variables and functions */
 int AOPLAY_FINAL_CHUNK ; 
 int /*<<< orphan*/  AO_STATE_PLAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct ao*) ; 
 int FUNC8 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ao*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ao*) ; 

__attribute__((used)) static int FUNC11(struct ao *ao, void **data, int samples, int flags)
{
    struct ao_pull_state *p = ao->api_priv;

    int write_samples = FUNC7(ao);
    write_samples = FUNC1(write_samples, samples);

    // Write starting from the last plane - this way, the first plane will
    // always contain the minimum amount of data readable across all planes
    // (assumes the reader starts with the first plane).
    int write_bytes = write_samples * ao->sstride;
    for (int n = ao->num_planes - 1; n >= 0; n--) {
        int r = FUNC8(p->buffers[n], data[n], write_bytes);
        FUNC3(r == write_bytes);
    }

    int state = FUNC5(&p->state);
    if (!FUNC0(state)) {
        FUNC6(&p->draining, false);
        FUNC6(&p->underflow, 0);
        FUNC9(ao, AO_STATE_PLAY);
        if (!ao->stream_silence)
            ao->driver->resume(ao);
    }

    bool draining = write_samples == samples && (flags & AOPLAY_FINAL_CHUNK);
    FUNC6(&p->draining, draining);

    int underflow = FUNC4(&p->underflow, 0);
    if (underflow)
        FUNC2(ao, "Audio underflow by %d samples.\n", underflow);

    return write_samples;
}