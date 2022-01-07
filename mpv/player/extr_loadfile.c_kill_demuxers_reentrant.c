
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demuxer {int dummy; } ;
struct demux_free_async_state {int dummy; } ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {double demux_termination_timeout; } ;


 int MP_DBG (struct MPContext*,char*) ;
 int MP_TARRAY_APPEND (int *,struct demux_free_async_state**,int,struct demux_free_async_state*) ;
 int MP_VERBOSE (struct MPContext*,char*) ;
 int demux_cancel_and_free (struct demuxer*) ;
 int demux_cancel_test (struct demuxer*) ;
 struct demux_free_async_state* demux_free_async (struct demuxer*) ;
 scalar_t__ demux_free_async_finish (struct demux_free_async_state*) ;
 int demux_free_async_force (struct demux_free_async_state*) ;
 int demux_set_wakeup_cb (struct demuxer*,int ,struct MPContext*) ;
 int mp_idle (struct MPContext*) ;
 int mp_set_timeout (struct MPContext*,double) ;
 double mp_time_sec () ;
 int talloc_free (struct demux_free_async_state**) ;
 int wakeup_demux ;

__attribute__((used)) static void kill_demuxers_reentrant(struct MPContext *mpctx,
                                    struct demuxer **demuxers, int num_demuxers)
{
    struct demux_free_async_state **items = ((void*)0);
    int num_items = 0;

    for (int n = 0; n < num_demuxers; n++) {
        struct demuxer *d = demuxers[n];

        if (!demux_cancel_test(d)) {

            demux_set_wakeup_cb(d, wakeup_demux, mpctx);

            struct demux_free_async_state *item = demux_free_async(d);
            if (item) {
                MP_TARRAY_APPEND(((void*)0), items, num_items, item);
                d = ((void*)0);
            }
        }

        demux_cancel_and_free(d);
    }

    if (!num_items)
        return;

    MP_DBG(mpctx, "Terminating demuxers...\n");

    double end = mp_time_sec() + mpctx->opts->demux_termination_timeout;
    bool force = 0;
    while (num_items) {
        double wait = end - mp_time_sec();

        for (int n = 0; n < num_items; n++) {
            struct demux_free_async_state *item = items[n];
            if (demux_free_async_finish(item)) {
                items[n] = items[num_items - 1];
                num_items -= 1;
                n--;
                goto repeat;
            } else if (wait < 0) {
                demux_free_async_force(item);
                if (!force)
                    MP_VERBOSE(mpctx, "Forcefully terminating demuxers...\n");
                force = 1;
            }
        }

        if (wait >= 0)
            mp_set_timeout(mpctx, wait);
        mp_idle(mpctx);
    repeat:;
    }

    talloc_free(items);

    MP_DBG(mpctx, "Done terminating demuxers.\n");
}
