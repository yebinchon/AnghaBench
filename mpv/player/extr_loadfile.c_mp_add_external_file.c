
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int is_external; int no_default; int no_auto_select; void* external_filename; void* title; } ;
struct sh_stream {int type; char* title; } ;
struct mp_cancel {int dummy; } ;
struct demuxer_params {int is_top_level; int force_format; } ;
struct demuxer {int cancel; int start_time; } ;
struct MPOpts {scalar_t__ rebase_start_time; int audio_demuxer_name; int sub_demuxer_name; } ;
struct MPContext {int num_tracks; int playback_abort; scalar_t__ stop_play; int global; struct MPOpts* opts; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;


 int MP_ERR (struct MPContext*,char*,char*,...) ;


 int STREAM_TYPE_COUNT ;
 struct track* add_stream_track (struct MPContext*,struct demuxer*,struct sh_stream*) ;
 int demux_cancel_and_free (struct demuxer*) ;
 int demux_get_num_stream (struct demuxer*) ;
 struct sh_stream* demux_get_stream (struct demuxer*,int) ;
 struct demuxer* demux_open_url (char*,struct demuxer_params*,struct mp_cancel*,int ) ;
 int demux_set_ts_offset (struct demuxer*,int ) ;
 int enable_demux_thread (struct MPContext*,struct demuxer*) ;
 char* mp_basename (char*) ;
 int mp_cancel_set_parent (int ,int ) ;
 scalar_t__ mp_cancel_test (struct mp_cancel*) ;
 int mp_core_lock (struct MPContext*) ;
 int mp_core_unlock (struct MPContext*) ;
 char* mp_tprintf (int,char*,int ) ;
 int stream_type_name (int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 void* talloc_strdup (struct track*,char*) ;

int mp_add_external_file(struct MPContext *mpctx, char *filename,
                         enum stream_type filter, struct mp_cancel *cancel)
{
    struct MPOpts *opts = mpctx->opts;
    if (!filename || mp_cancel_test(cancel))
        return -1;

    char *disp_filename = filename;
    if (strncmp(disp_filename, "memory://", 9) == 0)
        disp_filename = "memory://";

    struct demuxer_params params = {
        .is_top_level = 1,
    };

    switch (filter) {
    case 128:
        params.force_format = opts->sub_demuxer_name;
        break;
    case 129:
        params.force_format = opts->audio_demuxer_name;
        break;
    }

    mp_core_unlock(mpctx);

    struct demuxer *demuxer =
        demux_open_url(filename, &params, cancel, mpctx->global);
    if (demuxer)
        enable_demux_thread(mpctx, demuxer);

    mp_core_lock(mpctx);



    if (mpctx->stop_play)
        goto err_out;

    if (!demuxer)
        goto err_out;

    if (filter != 128 && opts->rebase_start_time)
        demux_set_ts_offset(demuxer, -demuxer->start_time);

    bool has_any = 0;
    for (int n = 0; n < demux_get_num_stream(demuxer); n++) {
        struct sh_stream *sh = demux_get_stream(demuxer, n);
        if (sh->type == filter || filter == STREAM_TYPE_COUNT) {
            has_any = 1;
            break;
        }
    }

    if (!has_any) {
        char *tname = mp_tprintf(20, "%s ", stream_type_name(filter));
        if (filter == STREAM_TYPE_COUNT)
            tname = "";
        MP_ERR(mpctx, "No %sstreams in file %s.\n", tname, disp_filename);
        goto err_out;
    }

    int first_num = -1;
    for (int n = 0; n < demux_get_num_stream(demuxer); n++) {
        struct sh_stream *sh = demux_get_stream(demuxer, n);
        struct track *t = add_stream_track(mpctx, demuxer, sh);
        t->is_external = 1;
        if (sh->title && sh->title[0]) {
            t->title = talloc_strdup(t, sh->title);
        } else {
            t->title = talloc_strdup(t, mp_basename(disp_filename));
        }
        t->external_filename = talloc_strdup(t, filename);
        t->no_default = sh->type != filter;
        t->no_auto_select = t->no_default;
        if (first_num < 0 && (filter == STREAM_TYPE_COUNT || sh->type == filter))
            first_num = mpctx->num_tracks - 1;
    }

    mp_cancel_set_parent(demuxer->cancel, mpctx->playback_abort);

    return first_num;

err_out:
    demux_cancel_and_free(demuxer);
    if (!mp_cancel_test(cancel))
        MP_ERR(mpctx, "Can not open external file %s.\n", disp_filename);
    return -1;
}
