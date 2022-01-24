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
struct priv {int /*<<< orphan*/  alsa; } ;
struct ao {struct priv* priv; } ;
typedef  int snd_pcm_sframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ SND_PCM_STATE_RUNNING ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ao *ao)
{
    struct priv *p = ao->priv;
    snd_pcm_sframes_t frames = FUNC2(p->alsa);
    if (frames > 0 && FUNC3(p->alsa) == SND_PCM_STATE_RUNNING) {
        frames = FUNC1(p->alsa, frames);
        if (frames < 0) {
            int err = frames;
            FUNC0("pcm rewind error");
        }
    }
}