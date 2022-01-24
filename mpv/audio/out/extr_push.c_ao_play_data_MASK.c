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
typedef  int /*<<< orphan*/  uint8_t ;
struct ao_push_state {int still_playing; int wait_on_ao; scalar_t__ expected_end_time; int /*<<< orphan*/  buffer; scalar_t__ final_chunk; int /*<<< orphan*/ ** silence; scalar_t__ paused; } ;
struct ao {int period_size; int device_buffer; int /*<<< orphan*/  wakeup_ctx; int /*<<< orphan*/  (* wakeup_cb ) (int /*<<< orphan*/ ) ;TYPE_1__* driver; scalar_t__ stream_silence; struct ao_push_state* api_priv; } ;
struct TYPE_2__ {int (* get_space ) (struct ao*) ;int (* play ) (struct ao*,void**,int,int) ;} ;

/* Variables and functions */
 int AOPLAY_FINAL_CHUNK ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*,char*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*,void**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct ao*,int) ; 
 int FUNC8 (struct ao*) ; 
 int FUNC9 (struct ao*,void**,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ao*) ; 

__attribute__((used)) static void FUNC12(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;
    int space = ao->driver->get_space(ao);
    bool play_silence = p->paused || (ao->stream_silence && !p->still_playing);
    space = FUNC0(space, 0);
    if (space % ao->period_size)
        FUNC1(ao, "Audio device reports unaligned available buffer size.\n");
    uint8_t **planes;
    int samples;
    if (play_silence) {
        planes = p->silence;
        samples = FUNC7(ao, space) ? space : 0;
    } else {
        FUNC5(p->buffer, &planes, &samples);
    }
    int max = samples;
    if (samples > space)
        samples = space;
    int flags = 0;
    if (p->final_chunk && samples == max) {
        flags |= AOPLAY_FINAL_CHUNK;
    } else {
        samples = samples / ao->period_size * ao->period_size;
    }
    FUNC2(ao, "start ao fill");
    FUNC4(ao, (void **)planes, samples);
    int r = 0;
    if (samples)
        r = ao->driver->play(ao, (void **)planes, samples, flags);
    FUNC2(ao, "end ao fill");
    if (r > samples) {
        FUNC1(ao, "Audio device returned nonsense value.\n");
        r = samples;
    } else if (r < 0) {
        FUNC1(ao, "Error writing audio to device.\n");
    } else if (r != samples) {
        FUNC1(ao, "Audio device returned broken buffer state (sent %d samples, "
               "got %d samples, %d period%s)!\n", samples, r,
               ao->period_size, flags & AOPLAY_FINAL_CHUNK ? " final" : "");
    }
    r = FUNC0(r, 0);
    // Probably can't copy the rest of the buffer due to period alignment.
    bool stuck_eof = r <= 0 && space >= max && samples > 0;
    if ((flags & AOPLAY_FINAL_CHUNK) && stuck_eof) {
        FUNC1(ao, "Audio output driver seems to ignore AOPLAY_FINAL_CHUNK.\n");
        r = max;
    }
    if (!play_silence)
        FUNC6(p->buffer, r);
    if (r > 0)
        p->expected_end_time = 0;
    // Nothing written, but more input data than space - this must mean the
    // AO's get_space() doesn't do period alignment correctly.
    bool stuck = r == 0 && max >= space && space > 0;
    if (stuck)
        FUNC1(ao, "Audio output is reporting incorrect buffer status.\n");
    // Wait until space becomes available. Also wait if we actually wrote data,
    // so the AO wakes us up properly if it needs more data.
    p->wait_on_ao = space == 0 || r > 0 || stuck;
    p->still_playing |= r > 0 && !play_silence;
    // If we just filled the AO completely (r == space), don't refill for a
    // while. Prevents wakeup feedback with byte-granular AOs.
    int needed = FUNC11(ao);
    bool more = needed >= (r == space ? ao->device_buffer / 4 : 1) && !stuck &&
                !(flags & AOPLAY_FINAL_CHUNK);
    if (more)
        ao->wakeup_cb(ao->wakeup_ctx); // request more data
    FUNC3(ao, "in=%d flags=%d space=%d r=%d wa/pl=%d/%d needed=%d more=%d\n",
             max, flags, space, r, p->wait_on_ao, p->still_playing, needed, more);
}