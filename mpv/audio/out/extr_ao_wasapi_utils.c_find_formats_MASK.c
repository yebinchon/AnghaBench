#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wasapi_state {scalar_t__ opt_exclusive; } ;
struct wasapi_sample_fmt {int member_1; int member_2; scalar_t__ mp_format; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_0; } ;
struct mp_chmap {int num; } ;
struct ao {int /*<<< orphan*/  format; int /*<<< orphan*/  samplerate; struct mp_chmap channels; struct wasapi_state* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  Format; } ;
typedef  TYPE_1__ WAVEFORMATEXTENSIBLE ;
typedef  int /*<<< orphan*/  AUDCLNT_SHAREMODE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_FORMAT_S16 ; 
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_EXCLUSIVE ; 
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int /*<<< orphan*/  KSDATAFORMAT_SUBTYPE_PCM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_chmap*,int) ; 
 scalar_t__ FUNC5 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_chmap*) ; 
 int FUNC8 (struct ao*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct wasapi_sample_fmt*,int /*<<< orphan*/ ,struct mp_chmap*) ; 
 int /*<<< orphan*/  wasapi_formats ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct wasapi_sample_fmt*) ; 

__attribute__((used)) static bool FUNC11(struct ao *ao)
{
    struct wasapi_state *state = ao->priv;
    struct mp_chmap channels = ao->channels;

    if (FUNC5(&channels))
        FUNC4(&channels, channels.num);
    FUNC7(&channels);
    if (!FUNC6(&channels))
        FUNC4(&channels, 2);

    struct wasapi_sample_fmt alt_formats[FUNC0(wasapi_formats)];
    FUNC10(ao->format, alt_formats);
    struct wasapi_sample_fmt wasapi_format =
        {AF_FORMAT_S16, 16, 16, &KSDATAFORMAT_SUBTYPE_PCM};;
    if (alt_formats[0].mp_format)
        wasapi_format = alt_formats[0];

    AUDCLNT_SHAREMODE share_mode;
    WAVEFORMATEXTENSIBLE wformat;
    FUNC9(&wformat, &wasapi_format, ao->samplerate, &channels);

    if (state->opt_exclusive || FUNC1(ao->format)) {
        share_mode = AUDCLNT_SHAREMODE_EXCLUSIVE;
        if(!FUNC2(ao, &wformat))
            return false;
    } else {
        share_mode = AUDCLNT_SHAREMODE_SHARED;
        if(!FUNC3(ao, &wformat))
            return false;
    }

    return FUNC8(ao, &wformat.Format, share_mode);
}