
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct demux_packet {int dummy; } ;
struct dec_sub {int preload_attempted; int lock; TYPE_2__* sd; int demux_waiter; int sh; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* decode ) (TYPE_2__*,struct demux_packet*) ;} ;


 int INFINITY ;
 int demux_read_packet_async (int ,struct demux_packet**) ;
 int mp_dispatch_queue_process (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,struct demux_packet*) ;
 int talloc_free (struct demux_packet*) ;

void sub_preload(struct dec_sub *sub)
{
    pthread_mutex_lock(&sub->lock);

    sub->preload_attempted = 1;

    for (;;) {
        struct demux_packet *pkt = ((void*)0);
        int r = demux_read_packet_async(sub->sh, &pkt);
        if (r == 0) {
            mp_dispatch_queue_process(sub->demux_waiter, INFINITY);
            continue;
        }
        if (!pkt)
            break;
        sub->sd->driver->decode(sub->sd, pkt);
        talloc_free(pkt);
    }

    pthread_mutex_unlock(&sub->lock);
}
