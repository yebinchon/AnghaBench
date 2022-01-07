
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ netdata_thread_t ;
struct TYPE_7__ {int rrdpush_sender_join; scalar_t__ rrdpush_sender_thread; int hostname; scalar_t__ rrdpush_sender_spawn; } ;
typedef TYPE_1__ RRDHOST ;


 int info (char*,int ) ;
 int netdata_thread_cancel (scalar_t__) ;
 int netdata_thread_join (scalar_t__,void**) ;
 int rrdhost_unlock (TYPE_1__*) ;
 int rrdhost_wrlock (TYPE_1__*) ;
 int rrdpush_buffer_lock (TYPE_1__*) ;
 int rrdpush_buffer_unlock (TYPE_1__*) ;

void rrdpush_sender_thread_stop(RRDHOST *host) {
    rrdpush_buffer_lock(host);
    rrdhost_wrlock(host);

    netdata_thread_t thr = 0;

    if(host->rrdpush_sender_spawn) {
        info("STREAM %s [send]: signaling sending thread to stop...", host->hostname);


        host->rrdpush_sender_join = 1;



        thr = host->rrdpush_sender_thread;


        netdata_thread_cancel(host->rrdpush_sender_thread);
    }

    rrdhost_unlock(host);
    rrdpush_buffer_unlock(host);

    if(thr != 0) {
        info("STREAM %s [send]: waiting for the sending thread to stop...", host->hostname);
        void *result;
        netdata_thread_join(thr, &result);
        info("STREAM %s [send]: sending thread has exited.", host->hostname);
    }
}
