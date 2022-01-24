#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct priv {int buflen; int paused; } ;
struct mp_chmap_sel {int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {scalar_t__ num; } ;
struct ao {scalar_t__ format; int samplerate; int device_buffer; TYPE_2__ channels; int /*<<< orphan*/  probing; struct priv* priv; } ;
struct TYPE_6__ {scalar_t__ format; int freq; int samples; scalar_t__ channels; struct ao* userdata; int /*<<< orphan*/  callback; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SDL_AudioSpec ;

/* Variables and functions */
 scalar_t__ AUDIO_S16SYS ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SDL_INIT_AUDIO ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ao*,struct mp_chmap_sel*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ao*,struct mp_chmap_sel*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  audio_callback ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__** fmtmap ; 
 int /*<<< orphan*/  FUNC11 (struct mp_chmap_sel*) ; 
 int /*<<< orphan*/  FUNC12 (struct ao*) ; 

__attribute__((used)) static int FUNC13(struct ao *ao)
{
    if (FUNC6(SDL_INIT_AUDIO)) {
        FUNC1(ao, "already initialized\n");
        return -1;
    }

    struct priv *priv = ao->priv;

    if (FUNC4(SDL_INIT_AUDIO)) {
        if (!ao->probing)
            FUNC1(ao, "SDL_Init failed\n");
        FUNC12(ao);
        return -1;
    }

    struct mp_chmap_sel sel = {0};
    FUNC11(&sel);
    if (!FUNC8(ao, &sel, &ao->channels)) {
        FUNC12(ao);
        return -1;
    }

    ao->format = FUNC7(ao->format);

    SDL_AudioSpec desired = {0};
    desired.format = AUDIO_S16SYS;
    for (int n = 0; fmtmap[n][0]; n++) {
        if (ao->format == fmtmap[n][0]) {
            desired.format = fmtmap[n][1];
            break;
        }
    }
    desired.freq = ao->samplerate;
    desired.channels = ao->channels.num;
    if (priv->buflen) {
        desired.samples = FUNC0(32768, FUNC10(ao->samplerate *
                                                         priv->buflen));
    }
    desired.callback = audio_callback;
    desired.userdata = ao;

    FUNC2(ao, "requested format: %d Hz, %d channels, %x, "
               "buffer size: %d samples\n",
               (int) desired.freq, (int) desired.channels,
               (int) desired.format, (int) desired.samples);

    SDL_AudioSpec obtained = desired;
    if (FUNC5(&desired, &obtained)) {
        if (!ao->probing)
            FUNC1(ao, "could not open audio: %s\n", FUNC3());
        FUNC12(ao);
        return -1;
    }

    FUNC2(ao, "obtained format: %d Hz, %d channels, %x, "
               "buffer size: %d samples\n",
               (int) obtained.freq, (int) obtained.channels,
               (int) obtained.format, (int) obtained.samples);

    // The sample count is usually the number of samples the callback requests,
    // which we assume is the period size. Normally, ao.c will allocate a large
    // enough buffer. But in case the period size should be pathologically
    // large, this will help.
    ao->device_buffer = 3 * obtained.samples;

    ao->format = 0;
    for (int n = 0; fmtmap[n][0]; n++) {
        if (obtained.format == fmtmap[n][1]) {
            ao->format = fmtmap[n][0];
            break;
        }
    }
    if (!ao->format) {
        if (!ao->probing)
            FUNC1(ao, "could not find matching format\n");
        FUNC12(ao);
        return -1;
    }

    if (!FUNC9(ao, &sel, &ao->channels, obtained.channels)) {
        FUNC12(ao);
        return -1;
    }

    ao->samplerate = obtained.freq;

    priv->paused = 1;

    return 1;
}