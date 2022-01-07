
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demux_stream {int need_wakeup; TYPE_1__* in; int wakeup_cb_ctx; int (* wakeup_cb ) (int ) ;} ;
struct TYPE_2__ {int wakeup; int wakeup_cb_ctx; int (* wakeup_cb ) (int ) ;} ;


 int pthread_cond_signal (int *) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void wakeup_ds(struct demux_stream *ds)
{
    if (ds->need_wakeup) {
        if (ds->wakeup_cb) {
            ds->wakeup_cb(ds->wakeup_cb_ctx);
        } else if (ds->in->wakeup_cb) {
            ds->in->wakeup_cb(ds->in->wakeup_cb_ctx);
        }
        ds->need_wakeup = 0;
        pthread_cond_signal(&ds->in->wakeup);
    }
}
