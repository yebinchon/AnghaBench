
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_stream {int dummy; } ;
struct demuxer_params {int stream_record; int is_top_level; scalar_t__ demuxer_failed; int stream_flags; int force_format; } ;
struct demuxer {int fully_read; } ;
struct MPContext {int open_done; int open_res_error; int open_url; scalar_t__ open_for_prefetch; struct demuxer* open_res_demuxer; int global; int open_cancel; int open_url_flags; int open_format; } ;


 int MPV_ERROR_LOADING_FAILED ;
 int MPV_ERROR_UNKNOWN_FORMAT ;
 int MP_NOPTS_VALUE ;
 int MP_VERBOSE (struct MPContext*,char*,int ) ;
 int atomic_store (int *,int) ;
 int demux_get_num_stream (struct demuxer*) ;
 struct sh_stream* demux_get_stream (struct demuxer*,int) ;
 struct demuxer* demux_open_url (int ,struct demuxer_params*,int ,int ) ;
 int demux_set_wakeup_cb (struct demuxer*,int ,struct MPContext*) ;
 int demux_start_prefetch (struct demuxer*) ;
 int demux_start_thread (struct demuxer*) ;
 int demuxer_select_track (struct demuxer*,struct sh_stream*,int ,int) ;
 int mp_wakeup_core (struct MPContext*) ;
 int mpthread_set_name (char*) ;
 int wakeup_demux ;

__attribute__((used)) static void *open_demux_thread(void *ctx)
{
    struct MPContext *mpctx = ctx;

    mpthread_set_name("opener");

    struct demuxer_params p = {
        .force_format = mpctx->open_format,
        .stream_flags = mpctx->open_url_flags,
        .stream_record = 1,
        .is_top_level = 1,
    };
    struct demuxer *demux =
        demux_open_url(mpctx->open_url, &p, mpctx->open_cancel, mpctx->global);
    mpctx->open_res_demuxer = demux;

    if (demux) {
        MP_VERBOSE(mpctx, "Opening done: %s\n", mpctx->open_url);

        if (mpctx->open_for_prefetch && !demux->fully_read) {
            int num_streams = demux_get_num_stream(demux);
            for (int n = 0; n < num_streams; n++) {
                struct sh_stream *sh = demux_get_stream(demux, n);
                demuxer_select_track(demux, sh, MP_NOPTS_VALUE, 1);
            }

            demux_set_wakeup_cb(demux, wakeup_demux, mpctx);
            demux_start_thread(demux);
            demux_start_prefetch(demux);
        }
    } else {
        MP_VERBOSE(mpctx, "Opening failed or was aborted: %s\n", mpctx->open_url);

        if (p.demuxer_failed) {
            mpctx->open_res_error = MPV_ERROR_UNKNOWN_FORMAT;
        } else {
            mpctx->open_res_error = MPV_ERROR_LOADING_FAILED;
        }
    }

    atomic_store(&mpctx->open_done, 1);
    mp_wakeup_core(mpctx);
    return ((void*)0);
}
