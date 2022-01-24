#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct priv {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  stream; } ;
struct pa_sample_spec {int dummy; } ;
struct ao {struct priv* priv; } ;
struct TYPE_3__ {scalar_t__ sink_usec; scalar_t__ since_underrun; int /*<<< orphan*/  playing; scalar_t__ transport_usec; scalar_t__ read_index; scalar_t__ write_index; } ;
typedef  TYPE_1__ pa_timing_info ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__,struct pa_sample_spec const*) ; 
 struct pa_sample_spec* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static double FUNC8(struct ao *ao)
{
    /* This code basically does what pa_stream_get_latency() _should_
     * do, but doesn't due to multiple known bugs in PulseAudio (at
     * PulseAudio version 2.1). In particular, the timing interpolation
     * mode (PA_STREAM_INTERPOLATE_TIMING) can return completely bogus
     * values, and the non-interpolating code has a bug causing too
     * large results at end of stream (so a stream never seems to finish).
     * This code can still return wrong values in some cases due to known
     * PulseAudio bugs that can not be worked around on the client side.
     *
     * We always query the server for latest timing info. This may take
     * too long to work well with remote audio servers, but at least
     * this should be enough to fix the normal local playback case.
     */
    struct priv *priv = ao->priv;
    FUNC5(priv->mainloop);
    if (!FUNC7(priv, FUNC4(priv->stream, NULL, NULL))) {
        FUNC0("pa_stream_update_timing_info() failed");
        return 0;
    }
    FUNC5(priv->mainloop);
    const pa_timing_info *ti = FUNC3(priv->stream);
    if (!ti) {
        FUNC6(priv->mainloop);
        FUNC0("pa_stream_get_timing_info() failed");
        return 0;
    }
    const struct pa_sample_spec *ss = FUNC2(priv->stream);
    if (!ss) {
        FUNC6(priv->mainloop);
        FUNC0("pa_stream_get_sample_spec() failed");
        return 0;
    }
    // data left in PulseAudio's main buffers (not written to sink yet)
    int64_t latency = FUNC1(ti->write_index - ti->read_index, ss);
    // since this info may be from a while ago, playback has progressed since
    latency -= ti->transport_usec;
    // data already moved from buffers to sink, but not played yet
    int64_t sink_latency = ti->sink_usec;
    if (!ti->playing)
        /* At the end of a stream, part of the data "left" in the sink may
         * be padding silence after the end; that should be subtracted to
         * get the amount of real audio from our stream. This adjustment
         * is missing from Pulseaudio's own get_latency calculations
         * (as of PulseAudio 2.1). */
        sink_latency -= FUNC1(ti->since_underrun, ss);
    if (sink_latency > 0)
        latency += sink_latency;
    if (latency < 0)
        latency = 0;
    FUNC6(priv->mainloop);
    return latency / 1e6;
}