
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int rrdpush_sender_error_shown; int* rrdpush_sender_pipe; int hostname; int rrdpush_sender_connected; int rrdpush_sender_buffer; int rrdpush_sender_spawn; scalar_t__ rrdpush_send_enabled; } ;
struct TYPE_11__ {TYPE_2__* rrdhost; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;


 size_t PIPE_WRITE ;
 int error (char*,int ) ;
 int info (char*,int ) ;
 scalar_t__ need_to_send_chart_definition (TYPE_1__*) ;
 int rrdpush_buffer_lock (TYPE_2__*) ;
 int rrdpush_buffer_unlock (TYPE_2__*) ;
 int rrdpush_send_chart_definition_nolock (TYPE_1__*) ;
 int rrdpush_send_chart_metrics_nolock (TYPE_1__*) ;
 int rrdpush_sender_thread_spawn (TYPE_2__*) ;
 int should_send_chart_matching (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 int write (int,char*,int) ;

void rrdset_done_push(RRDSET *st) {
    if(unlikely(!should_send_chart_matching(st)))
        return;

    RRDHOST *host = st->rrdhost;

    rrdpush_buffer_lock(host);

    if(unlikely(host->rrdpush_send_enabled && !host->rrdpush_sender_spawn))
        rrdpush_sender_thread_spawn(host);

    if(unlikely(!host->rrdpush_sender_buffer || !host->rrdpush_sender_connected)) {
        if(unlikely(!host->rrdpush_sender_error_shown))
            error("STREAM %s [send]: not ready - discarding collected metrics.", host->hostname);

        host->rrdpush_sender_error_shown = 1;

        rrdpush_buffer_unlock(host);
        return;
    }
    else if(unlikely(host->rrdpush_sender_error_shown)) {
        info("STREAM %s [send]: sending metrics...", host->hostname);
        host->rrdpush_sender_error_shown = 0;
    }

    if(need_to_send_chart_definition(st))
        rrdpush_send_chart_definition_nolock(st);

    rrdpush_send_chart_metrics_nolock(st);


    if(host->rrdpush_sender_pipe[PIPE_WRITE] != -1 && write(host->rrdpush_sender_pipe[PIPE_WRITE], " ", 1) == -1)
        error("STREAM %s [send]: cannot write to internal pipe", host->hostname);

    rrdpush_buffer_unlock(host);
}
