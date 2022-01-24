#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ao_convert_fmt {scalar_t__ pad_lsb; scalar_t__ dst_bits; int /*<<< orphan*/  channels; scalar_t__ src_fmt; } ;
struct wasapi_state {scalar_t__ share_mode; int /*<<< orphan*/  format; struct ao_convert_fmt convert_format; } ;
struct wasapi_sample_fmt {scalar_t__ mp_format; scalar_t__ used_msb; scalar_t__ bits; } ;
struct mp_chmap {int /*<<< orphan*/  num; } ;
struct ao {int /*<<< orphan*/  samplerate; scalar_t__ format; struct mp_chmap channels; struct wasapi_state* priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  nSamplesPerSec; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
typedef  scalar_t__ AUDCLNT_SHAREMODE ;

/* Variables and functions */
 scalar_t__ AUDCLNT_SHAREMODE_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ao_convert_fmt*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_chmap*,TYPE_1__*) ; 
 struct wasapi_sample_fmt FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC10(struct ao *ao, WAVEFORMATEX *wf,
                          AUDCLNT_SHAREMODE share_mode)
{
    struct wasapi_state *state = ao->priv;
    struct wasapi_sample_fmt format = FUNC6(wf);
    if (!format.mp_format) {
        FUNC0(ao, "Unable to construct sample format from WAVEFORMAT %s\n",
               FUNC9(wf));
        return false;
    }

    // Do not touch the ao for passthrough, just assume that we set WAVEFORMATEX
    // correctly.
    if (FUNC2(format.mp_format)) {
        struct mp_chmap channels;
        if (!FUNC5(&channels, wf)) {
            FUNC0(ao, "Unable to construct channel map from WAVEFORMAT %s\n",
                   FUNC9(wf));
            return false;
        }

        struct ao_convert_fmt conv = {
            .src_fmt    = format.mp_format,
            .channels   = channels.num,
            .dst_bits   = format.bits,
            .pad_lsb    = format.bits - format.used_msb,
        };
        if (!FUNC4(&conv)) {
            FUNC0(ao, "Unable to convert to %s\n", FUNC9(wf));
            return false;
        }

        state->convert_format = conv;
        ao->samplerate = wf->nSamplesPerSec;
        ao->format     = format.mp_format;
        ao->channels   = channels;
    }
    FUNC8(&state->format, wf);
    state->share_mode = share_mode;

    FUNC1(ao, "Accepted as %s %s @ %dhz -> %s (%s)\n",
               FUNC7(&ao->channels),
               FUNC3(ao->format), ao->samplerate,
               FUNC9(wf),
               state->share_mode == AUDCLNT_SHAREMODE_EXCLUSIVE
               ? "exclusive" : "shared");
    return true;
}