
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demuxer {struct demux_internal* in; } ;
struct demux_packet {int dummy; } ;
struct demux_internal {int num_streams; int reading; int lock; TYPE_1__** streams; int blocked; int threading; } ;
struct TYPE_2__ {int ds; } ;


 int assert (int) ;
 int dequeue_packet (int ,struct demux_packet**) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int thread_work (struct demux_internal*) ;

struct demux_packet *demux_read_any_packet(struct demuxer *demuxer)
{
    struct demux_internal *in = demuxer->in;
    pthread_mutex_lock(&in->lock);
    assert(!in->threading);
    struct demux_packet *out_pkt = ((void*)0);
    bool read_more = 1;
    while (read_more && !in->blocked) {
        bool all_eof = 1;
        for (int n = 0; n < in->num_streams; n++) {
            in->reading = 1;
            int r = dequeue_packet(in->streams[n]->ds, &out_pkt);
            if (r > 0)
                goto done;
            if (r == 0)
                all_eof = 0;
        }

        read_more = thread_work(in);
        read_more &= !all_eof;
    }
done:
    pthread_mutex_unlock(&in->lock);
    return out_pkt;
}
