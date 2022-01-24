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
struct priv {int paused; int final_chunk_written; int /*<<< orphan*/  alsa; scalar_t__ delay_before_pause; scalar_t__ prepause_frames; } ;
struct ao {scalar_t__ stream_silence; struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*) ; 

__attribute__((used)) static void FUNC4(struct ao *ao)
{
    struct priv *p = ao->priv;
    int err;

    p->paused = false;
    p->prepause_frames = 0;
    p->delay_before_pause = 0;
    p->final_chunk_written = false;

    if (ao->stream_silence) {
        FUNC3(ao);
    } else {
        err = FUNC1(p->alsa);
        FUNC0("pcm prepare error");
        err = FUNC2(p->alsa);
        FUNC0("pcm prepare error");
    }

alsa_error: ;
}