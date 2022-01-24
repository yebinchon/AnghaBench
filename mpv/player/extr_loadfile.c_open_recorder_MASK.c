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
struct track {struct sh_stream* stream; scalar_t__ dec; scalar_t__ d_sub; scalar_t__ selected; } ;
struct sh_stream {int dummy; } ;
struct mp_recorder_sink {int dummy; } ;
struct MPContext {int num_tracks; int /*<<< orphan*/  recorder; struct track** tracks; TYPE_1__* opts; int /*<<< orphan*/  global; int /*<<< orphan*/  playback_initialized; } ;
struct TYPE_2__ {char* record_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sh_stream**,int,struct sh_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_recorder_sink*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct sh_stream**,int) ; 
 struct mp_recorder_sink* FUNC5 (int /*<<< orphan*/ ,struct sh_stream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct track*,struct mp_recorder_sink*) ; 
 int /*<<< orphan*/  FUNC8 (struct sh_stream**) ; 

void FUNC9(struct MPContext *mpctx, bool on_init)
{
    if (!mpctx->playback_initialized)
        return;

    FUNC2(mpctx);

    char *target = mpctx->opts->record_file;
    if (!target || !target[0])
        return;

    struct sh_stream **streams = NULL;
    int num_streams = 0;

    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct track *track = mpctx->tracks[n];
        if (track->stream && track->selected && (track->d_sub || track->dec))
            FUNC0(NULL, streams, num_streams, track->stream);
    }

    mpctx->recorder = FUNC4(mpctx->global, mpctx->opts->record_file,
                                         streams, num_streams);

    if (!mpctx->recorder) {
        FUNC8(streams);
        FUNC3(mpctx);
        return;
    }

    if (!on_init)
        FUNC6(mpctx->recorder);

    int n_stream = 0;
    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct track *track = mpctx->tracks[n];
        if (n_stream >= num_streams)
            break;
        // (We expect track->stream not to be reused on other tracks.)
        if (track->stream == streams[n_stream]) {
            struct mp_recorder_sink * sink =
                FUNC5(mpctx->recorder, streams[n_stream]);
            FUNC1(sink);
            FUNC7(track, sink);
            n_stream++;
        }
    }

    FUNC8(streams);
}