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
struct timespec {int dummy; } ;
struct ao_push_state {int final_chunk; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  buffer; scalar_t__ still_playing; scalar_t__ paused; } ;
struct ao {double buffer; TYPE_1__* driver; scalar_t__ samplerate; struct ao_push_state* api_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* drain ) (struct ao*) ;} ;

/* Variables and functions */
 int FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct timespec FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ao*) ; 
 int /*<<< orphan*/  FUNC10 (struct ao*) ; 
 double FUNC11 (struct ao*) ; 
 int /*<<< orphan*/  FUNC12 (struct ao*) ; 

__attribute__((used)) static void FUNC13(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;
    double maxbuffer = ao->buffer / (double)ao->samplerate + 1;

    FUNC1(ao, "draining...\n");

    FUNC7(&p->lock);
    if (p->paused)
        goto done;

    p->final_chunk = true;
    FUNC12(ao);

    // Wait until everything is done. Since the audio API (especially ALSA)
    // can't be trusted to do this right, and we're hard-blocking here, apply
    // an upper bound timeout.
    struct timespec until = FUNC4(maxbuffer);
    while (p->still_playing && FUNC3(p->buffer) > 0) {
        if (FUNC6(&p->wakeup, &p->lock, &until)) {
            FUNC2(ao, "Draining is taking too long, aborting.\n");
            goto done;
        }
    }

    if (ao->driver->drain) {
        ao->driver->drain(ao);
    } else {
        double time = FUNC11(ao);
        FUNC5(FUNC0(time, maxbuffer) * 1e6);
    }

done:
    FUNC8(&p->lock);

    FUNC9(ao);
}