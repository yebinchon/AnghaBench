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
struct priv {int buffersize; int outburst; int /*<<< orphan*/  alsa; scalar_t__ paused; } ;
struct ao {struct priv* priv; } ;
typedef  int snd_pcm_sframes_t ;

/* Variables and functions */
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SND_PCM_STATE_SETUP ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ao *ao)
{
    struct priv *p = ao->priv;

    // in case of pausing or the device still being configured,
    // just return our buffer size.
    if (p->paused || FUNC4(p->alsa) == SND_PCM_STATE_SETUP)
        return p->buffersize;

    snd_pcm_sframes_t space = FUNC3(p->alsa);
    if (space < 0 && space != -EPIPE) {
        FUNC0(ao, "Error received from snd_pcm_avail "
                   "(%ld, %s with ALSA state %s)!\n",
               space, FUNC6(space),
               FUNC5(FUNC4(p->alsa)));

        // request a reload of the AO if device is not present,
        // then error out.
        FUNC1(ao, space);
        goto alsa_error;
    }
    if (space == -EPIPE)
        FUNC2(ao);

    if (space > p->buffersize || space < 0) // Buffer underrun?
        space = p->buffersize;
    return space / p->outburst * p->outburst;

alsa_error:
    return 0;
}