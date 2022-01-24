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
struct replaygain_data {int /*<<< orphan*/  track_peak; int /*<<< orphan*/  album_peak; int /*<<< orphan*/  track_gain; int /*<<< orphan*/  album_gain; int /*<<< orphan*/  member_0; } ;
struct mp_tags {int dummy; } ;
struct mp_log {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mp_log*,struct mp_tags*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mp_log*,struct mp_tags*,char*,int /*<<< orphan*/ *) ; 
 struct replaygain_data* FUNC2 (int /*<<< orphan*/ *,struct replaygain_data*) ; 

__attribute__((used)) static struct replaygain_data *FUNC3(struct mp_log *log,
                                            struct mp_tags *tags)
{
    struct replaygain_data rg = {0};

    // Set values in *rg, using track gain as a fallback for album gain if the
    // latter is not present. This behavior matches that in demux/demux_lavf.c's
    // export_replaygain; if you change this, please make equivalent changes
    // there too.
    if (FUNC0(log, tags, "REPLAYGAIN_TRACK_GAIN", &rg.track_gain) >= 0 &&
        FUNC1(log, tags, "REPLAYGAIN_TRACK_PEAK", &rg.track_peak) >= 0)
    {
        if (FUNC0(log, tags, "REPLAYGAIN_ALBUM_GAIN", &rg.album_gain) < 0 ||
            FUNC1(log, tags, "REPLAYGAIN_ALBUM_PEAK", &rg.album_peak) < 0)
        {
            // Album gain is undefined; fall back to track gain.
            rg.album_gain = rg.track_gain;
            rg.album_peak = rg.track_peak;
        }
        return FUNC2(NULL, &rg);
    }

    if (FUNC0(log, tags, "REPLAYGAIN_GAIN", &rg.track_gain) >= 0 &&
        FUNC1(log, tags, "REPLAYGAIN_PEAK", &rg.track_peak) >= 0)
    {
        rg.album_gain = rg.track_gain;
        rg.album_peak = rg.track_peak;
        return FUNC2(NULL, &rg);
    }

    return NULL;
}