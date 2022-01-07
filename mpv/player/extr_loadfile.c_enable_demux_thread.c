
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demuxer {int fully_read; } ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__ demuxer_thread; } ;


 int demux_set_wakeup_cb (struct demuxer*,int ,struct MPContext*) ;
 int demux_start_thread (struct demuxer*) ;
 int wakeup_demux ;

__attribute__((used)) static void enable_demux_thread(struct MPContext *mpctx, struct demuxer *demux)
{
    if (mpctx->opts->demuxer_thread && !demux->fully_read) {
        demux_set_wakeup_cb(demux, wakeup_demux, mpctx);
        demux_start_thread(demux);
    }
}
