
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* rrdpush_sender_pipe; int hostname; scalar_t__ rrdpush_sender_spawn; int rrdpush_sender_join; int * rrdpush_sender_buffer; } ;
typedef TYPE_1__ RRDHOST ;


 size_t PIPE_READ ;
 size_t PIPE_WRITE ;
 int buffer_free (int *) ;
 int close (int) ;
 int info (char*,int ) ;
 int netdata_thread_detach (int ) ;
 int netdata_thread_self () ;
 int rrdhost_unlock (TYPE_1__*) ;
 int rrdhost_wrlock (TYPE_1__*) ;
 int rrdpush_buffer_lock (TYPE_1__*) ;
 int rrdpush_buffer_unlock (TYPE_1__*) ;
 int rrdpush_sender_thread_close_socket (TYPE_1__*) ;

__attribute__((used)) static void rrdpush_sender_thread_cleanup_callback(void *ptr) {
    RRDHOST *host = (RRDHOST *)ptr;

    rrdpush_buffer_lock(host);
    rrdhost_wrlock(host);

    info("STREAM %s [send]: sending thread cleans up...", host->hostname);

    rrdpush_sender_thread_close_socket(host);


    if(host->rrdpush_sender_pipe[PIPE_READ] != -1) {
        close(host->rrdpush_sender_pipe[PIPE_READ]);
        host->rrdpush_sender_pipe[PIPE_READ] = -1;
    }

    if(host->rrdpush_sender_pipe[PIPE_WRITE] != -1) {
        close(host->rrdpush_sender_pipe[PIPE_WRITE]);
        host->rrdpush_sender_pipe[PIPE_WRITE] = -1;
    }

    buffer_free(host->rrdpush_sender_buffer);
    host->rrdpush_sender_buffer = ((void*)0);

    if(!host->rrdpush_sender_join) {
        info("STREAM %s [send]: sending thread detaches itself.", host->hostname);
        netdata_thread_detach(netdata_thread_self());
    }

    host->rrdpush_sender_spawn = 0;

    info("STREAM %s [send]: sending thread now exits.", host->hostname);

    rrdhost_unlock(host);
    rrdpush_buffer_unlock(host);
}
