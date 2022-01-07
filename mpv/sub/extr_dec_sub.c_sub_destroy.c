
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dec_sub {int lock; struct dec_sub* sd; TYPE_1__* driver; int sh; } ;
struct TYPE_2__ {int (* uninit ) (struct dec_sub*) ;} ;


 int demux_set_stream_wakeup_cb (int ,int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 int stub1 (struct dec_sub*) ;
 int sub_reset (struct dec_sub*) ;
 int talloc_free (struct dec_sub*) ;

void sub_destroy(struct dec_sub *sub)
{
    if (!sub)
        return;
    demux_set_stream_wakeup_cb(sub->sh, ((void*)0), ((void*)0));
    if (sub->sd) {
        sub_reset(sub);
        sub->sd->driver->uninit(sub->sd);
    }
    talloc_free(sub->sd);
    pthread_mutex_destroy(&sub->lock);
    talloc_free(sub);
}
