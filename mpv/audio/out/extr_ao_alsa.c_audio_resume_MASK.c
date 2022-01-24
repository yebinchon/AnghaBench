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
struct priv {int paused; scalar_t__ prepause_frames; int /*<<< orphan*/  alsa; scalar_t__ can_pause; } ;
struct ao {scalar_t__ stream_silence; struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*) ; 
 scalar_t__ SND_PCM_STATE_PAUSED ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ao *ao)
{
    struct priv *p = ao->priv;
    int err;

    if (!p->paused)
        return;

    FUNC4(ao);

    if (ao->stream_silence) {
        p->paused = false;
        FUNC3(ao); // recovers from underrun (as a side-effect)
    } else if (p->can_pause) {
        if (FUNC7(p->alsa) == SND_PCM_STATE_PAUSED) {
            err = FUNC5(p->alsa, 0);
            FUNC0("pcm resume error");
        }
    } else {
        FUNC1(ao, "resume not supported by hardware\n");
        err = FUNC6(p->alsa);
        FUNC0("pcm prepare error");
    }

    if (p->prepause_frames)
        FUNC2(ao, p->prepause_frames);

alsa_error: ;
    p->paused = false;
}