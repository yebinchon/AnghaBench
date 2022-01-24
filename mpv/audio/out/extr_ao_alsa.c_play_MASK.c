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
struct priv {int outburst; int paused; int final_chunk_written; int /*<<< orphan*/  alsa; int /*<<< orphan*/  convert; } ;
struct ao {int /*<<< orphan*/  format; struct priv* priv; } ;
typedef  int snd_pcm_sframes_t ;

/* Variables and functions */
 int AOPLAY_FINAL_CHUNK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EAGAIN ; 
 int EINTR ; 
 int EPIPE ; 
 int ESTRPIPE ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ao*) ; 
 int /*<<< orphan*/  FUNC6 (struct ao*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *p = ao->priv;
    snd_pcm_sframes_t res = 0;
    bool final_chunk = flags & AOPLAY_FINAL_CHUNK;

    if (!final_chunk)
        samples = samples / p->outburst * p->outburst;

    if (samples == 0)
        goto done;
    FUNC3(&p->convert, data, samples);

    do {
        if (FUNC2(ao->format)) {
            res = FUNC9(p->alsa, data, samples);
        } else {
            res = FUNC8(p->alsa, data[0], samples);
        }

        if (res == -EINTR || res == -EAGAIN) { /* retry */
            res = 0;
        } else if (!FUNC4(ao, res)) {
            goto alsa_error;
        } else if (res < 0) {
            if (res == -ESTRPIPE) {  /* suspend */
                FUNC6(ao);
            } else if (res == -EPIPE) {
                FUNC5(ao);
            } else {
                FUNC1(ao, "Write error: %s\n", FUNC10(res));
            }
            int err = FUNC7(p->alsa);
            FUNC0("pcm prepare error");
            res = 0;
        }
    } while (res == 0);

    p->paused = false;

done:
    p->final_chunk_written = res == samples && final_chunk;
    return res < 0 ? -1 : res;

alsa_error:
    return -1;
}