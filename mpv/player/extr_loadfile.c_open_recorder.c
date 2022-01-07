
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct track {struct sh_stream* stream; scalar_t__ dec; scalar_t__ d_sub; scalar_t__ selected; } ;
struct sh_stream {int dummy; } ;
struct mp_recorder_sink {int dummy; } ;
struct MPContext {int num_tracks; int recorder; struct track** tracks; TYPE_1__* opts; int global; int playback_initialized; } ;
struct TYPE_2__ {char* record_file; } ;


 int MP_TARRAY_APPEND (int *,struct sh_stream**,int,struct sh_stream*) ;
 int assert (struct mp_recorder_sink*) ;
 int close_recorder (struct MPContext*) ;
 int close_recorder_and_error (struct MPContext*) ;
 int mp_recorder_create (int ,char*,struct sh_stream**,int) ;
 struct mp_recorder_sink* mp_recorder_get_sink (int ,struct sh_stream*) ;
 int mp_recorder_mark_discontinuity (int ) ;
 int set_track_recorder_sink (struct track*,struct mp_recorder_sink*) ;
 int talloc_free (struct sh_stream**) ;

void open_recorder(struct MPContext *mpctx, bool on_init)
{
    if (!mpctx->playback_initialized)
        return;

    close_recorder(mpctx);

    char *target = mpctx->opts->record_file;
    if (!target || !target[0])
        return;

    struct sh_stream **streams = ((void*)0);
    int num_streams = 0;

    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct track *track = mpctx->tracks[n];
        if (track->stream && track->selected && (track->d_sub || track->dec))
            MP_TARRAY_APPEND(((void*)0), streams, num_streams, track->stream);
    }

    mpctx->recorder = mp_recorder_create(mpctx->global, mpctx->opts->record_file,
                                         streams, num_streams);

    if (!mpctx->recorder) {
        talloc_free(streams);
        close_recorder_and_error(mpctx);
        return;
    }

    if (!on_init)
        mp_recorder_mark_discontinuity(mpctx->recorder);

    int n_stream = 0;
    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct track *track = mpctx->tracks[n];
        if (n_stream >= num_streams)
            break;

        if (track->stream == streams[n_stream]) {
            struct mp_recorder_sink * sink =
                mp_recorder_get_sink(mpctx->recorder, streams[n_stream]);
            assert(sink);
            set_track_recorder_sink(track, sink);
            n_stream++;
        }
    }

    talloc_free(streams);
}
