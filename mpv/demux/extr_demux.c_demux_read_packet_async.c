
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_stream {struct demux_stream* ds; } ;
struct demux_stream {struct demux_internal* in; } ;
struct demux_packet {int dummy; } ;
struct demux_internal {int lock; scalar_t__ blocked; scalar_t__ threading; } ;


 int dequeue_packet (struct demux_stream*,struct demux_packet**) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int thread_work (struct demux_internal*) ;

int demux_read_packet_async(struct sh_stream *sh, struct demux_packet **out_pkt)
{
    struct demux_stream *ds = sh ? sh->ds : ((void*)0);
    *out_pkt = ((void*)0);
    if (!ds)
        return -1;
    struct demux_internal *in = ds->in;

    pthread_mutex_lock(&in->lock);
    int r = -1;
    while (1) {
        r = dequeue_packet(ds, out_pkt);
        if (in->threading || in->blocked || r != 0)
            break;

        thread_work(in);
    }
    pthread_mutex_unlock(&in->lock);
    return r;
}
