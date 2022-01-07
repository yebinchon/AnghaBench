
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ao_push_state {int still_playing; int wait_on_ao; scalar_t__ expected_end_time; int buffer; scalar_t__ final_chunk; int ** silence; scalar_t__ paused; } ;
struct ao {int period_size; int device_buffer; int wakeup_ctx; int (* wakeup_cb ) (int ) ;TYPE_1__* driver; scalar_t__ stream_silence; struct ao_push_state* api_priv; } ;
struct TYPE_2__ {int (* get_space ) (struct ao*) ;int (* play ) (struct ao*,void**,int,int) ;} ;


 int AOPLAY_FINAL_CHUNK ;
 int MPMAX (int,int ) ;
 int MP_ERR (struct ao*,char*,...) ;
 int MP_STATS (struct ao*,char*) ;
 int MP_TRACE (struct ao*,char*,int,int,int,int,int,int,int,int) ;
 int ao_post_process_data (struct ao*,void**,int) ;
 int mp_audio_buffer_peek (int ,int ***,int*) ;
 int mp_audio_buffer_skip (int ,int) ;
 scalar_t__ realloc_silence (struct ao*,int) ;
 int stub1 (struct ao*) ;
 int stub2 (struct ao*,void**,int,int) ;
 int stub3 (int ) ;
 int unlocked_get_space (struct ao*) ;

__attribute__((used)) static void ao_play_data(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;
    int space = ao->driver->get_space(ao);
    bool play_silence = p->paused || (ao->stream_silence && !p->still_playing);
    space = MPMAX(space, 0);
    if (space % ao->period_size)
        MP_ERR(ao, "Audio device reports unaligned available buffer size.\n");
    uint8_t **planes;
    int samples;
    if (play_silence) {
        planes = p->silence;
        samples = realloc_silence(ao, space) ? space : 0;
    } else {
        mp_audio_buffer_peek(p->buffer, &planes, &samples);
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
    MP_STATS(ao, "start ao fill");
    ao_post_process_data(ao, (void **)planes, samples);
    int r = 0;
    if (samples)
        r = ao->driver->play(ao, (void **)planes, samples, flags);
    MP_STATS(ao, "end ao fill");
    if (r > samples) {
        MP_ERR(ao, "Audio device returned nonsense value.\n");
        r = samples;
    } else if (r < 0) {
        MP_ERR(ao, "Error writing audio to device.\n");
    } else if (r != samples) {
        MP_ERR(ao, "Audio device returned broken buffer state (sent %d samples, "
               "got %d samples, %d period%s)!\n", samples, r,
               ao->period_size, flags & AOPLAY_FINAL_CHUNK ? " final" : "");
    }
    r = MPMAX(r, 0);

    bool stuck_eof = r <= 0 && space >= max && samples > 0;
    if ((flags & AOPLAY_FINAL_CHUNK) && stuck_eof) {
        MP_ERR(ao, "Audio output driver seems to ignore AOPLAY_FINAL_CHUNK.\n");
        r = max;
    }
    if (!play_silence)
        mp_audio_buffer_skip(p->buffer, r);
    if (r > 0)
        p->expected_end_time = 0;


    bool stuck = r == 0 && max >= space && space > 0;
    if (stuck)
        MP_ERR(ao, "Audio output is reporting incorrect buffer status.\n");


    p->wait_on_ao = space == 0 || r > 0 || stuck;
    p->still_playing |= r > 0 && !play_silence;


    int needed = unlocked_get_space(ao);
    bool more = needed >= (r == space ? ao->device_buffer / 4 : 1) && !stuck &&
                !(flags & AOPLAY_FINAL_CHUNK);
    if (more)
        ao->wakeup_cb(ao->wakeup_ctx);
    MP_TRACE(ao, "in=%d flags=%d space=%d r=%d wa/pl=%d/%d needed=%d more=%d\n",
             max, flags, space, r, p->wait_on_ao, p->still_playing, needed, more);
}
