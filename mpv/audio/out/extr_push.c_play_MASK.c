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
struct ao_push_state {int paused; int final_chunk; int still_playing; int /*<<< orphan*/  lock; scalar_t__ expected_end_time; int /*<<< orphan*/  buffer; } ;
struct ao {struct ao_push_state* api_priv; } ;

/* Variables and functions */
 int AOPLAY_FINAL_CHUNK ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void**,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ao*) ; 

__attribute__((used)) static int FUNC7(struct ao *ao, void **data, int samples, int flags)
{
    struct ao_push_state *p = ao->api_priv;

    FUNC4(&p->lock);

    int write_samples = FUNC3(p->buffer);
    write_samples = FUNC0(write_samples, samples);

    FUNC1(ao, "samples=%d flags=%d r=%d\n", samples, flags, write_samples);

    if (write_samples < samples)
        flags = flags & ~AOPLAY_FINAL_CHUNK;
    bool is_final = flags & AOPLAY_FINAL_CHUNK;

    FUNC2(p->buffer, data, samples);

    bool got_data = write_samples > 0 || p->paused || p->final_chunk != is_final;

    p->final_chunk = is_final;
    p->paused = false;
    if (got_data) {
        p->still_playing = true;
        p->expected_end_time = 0;

        // If we don't have new data, the decoder thread basically promises it
        // will send new data as soon as it's available.
        FUNC6(ao);
    }
    FUNC5(&p->lock);
    return write_samples;
}