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
struct priv {int paused; int delay_before_pause; int prepause_frames; int /*<<< orphan*/  alsa; scalar_t__ can_pause; } ;
struct ao {int samplerate; scalar_t__ stream_silence; struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ SND_PCM_STATE_RUNNING ; 
 int FUNC1 (struct ao*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ao*) ; 

__attribute__((used)) static void FUNC6(struct ao *ao)
{
    struct priv *p = ao->priv;
    int err;

    if (p->paused)
        return;

    p->delay_before_pause = FUNC1(ao);
    p->prepause_frames = p->delay_before_pause * ao->samplerate;

    if (ao->stream_silence) {
        FUNC5(ao);
    } else if (p->can_pause) {
        if (FUNC4(p->alsa) == SND_PCM_STATE_RUNNING) {
            err = FUNC3(p->alsa, 1);
            FUNC0("pcm pause error");
            p->prepause_frames = 0;
        }
    } else {
        err = FUNC2(p->alsa);
        FUNC0("pcm drop error");
    }

    p->paused = true;

alsa_error: ;
}