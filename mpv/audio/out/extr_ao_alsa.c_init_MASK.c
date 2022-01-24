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
struct priv {TYPE_1__* opts; } ;
struct mp_chmap {int num; } ;
struct ao {struct mp_chmap channels; int /*<<< orphan*/  format; int /*<<< orphan*/  global; struct priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  ni; } ;

/* Variables and functions */
 int INIT_DEVICE_ERR_HWPARAMS ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*) ; 
 int SND_PCM_NO_AUTO_CHANNELS ; 
 int SND_PCM_NO_AUTO_FORMAT ; 
 int SND_PCM_NO_AUTO_RESAMPLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ao_alsa_conf ; 
 int FUNC3 (struct ao*,int) ; 
 scalar_t__ FUNC4 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_chmap*) ; 
 TYPE_1__* FUNC6 (struct ao*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct ao*) ; 

__attribute__((used)) static int FUNC9(struct ao *ao)
{
    struct priv *p = ao->priv;
    p->opts = FUNC6(ao, ao->global, &ao_alsa_conf);

    if (!p->opts->ni)
        ao->format = FUNC2(ao->format);

    FUNC0(ao, "using ALSA version: %s\n", FUNC7());

    int mode = 0;
    int r = FUNC3(ao, mode);
    if (r == INIT_DEVICE_ERR_HWPARAMS) {
        // With some drivers, ALSA appears to be unable to set valid hwparams,
        // but they work if at least SND_PCM_NO_AUTO_FORMAT is set. Also, it
        // appears you can set this flag only on opening a device, thus there
        // is the need to retry opening the device.
        FUNC1(ao, "Attempting to work around even more ALSA bugs...\n");
        mode |= SND_PCM_NO_AUTO_CHANNELS | SND_PCM_NO_AUTO_FORMAT |
                SND_PCM_NO_AUTO_RESAMPLE;
        r = FUNC3(ao, mode);
    }

    // Sometimes, ALSA will advertise certain chmaps, but it's not possible to
    // set them. This can happen with dmix: as of alsa 1.0.29, dmix can do
    // stereo only, but advertises the surround chmaps of the underlying device.
    // In this case, e.g. setting 6 channels will succeed, but requesting  5.1
    // afterwards will fail. Then it will return something like "FL FR NA NA NA NA"
    // as channel map. This means we would have to pad stereo output to 6
    // channels with silence, which would require lots of extra processing. You
    // can't change the number of channels to 2 either, because the hw params
    // are already set! So just fuck it and reopen the device with the chmap
    // "cleaned out" of NA entries.
    if (r >= 0) {
        struct mp_chmap without_na = ao->channels;
        FUNC5(&without_na);

        if (FUNC4(&without_na) && without_na.num <= 2 &&
            ao->channels.num > 2)
        {
            FUNC0(ao, "Working around braindead dmix multichannel behavior.\n");
            FUNC8(ao);
            ao->channels = without_na;
            r = FUNC3(ao, mode);
        }
    }

    return r;
}