
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rrdpush_sender_buffer; int hostname; } ;
typedef TYPE_1__ RRDHOST ;


 int buffer_flush (int ) ;
 char* buffer_strlen (int ) ;
 int error (char*,int ,char*) ;
 int rrdpush_buffer_lock (TYPE_1__*) ;
 int rrdpush_buffer_unlock (TYPE_1__*) ;
 int rrdpush_sender_thread_reset_all_charts (TYPE_1__*) ;
 int rrdpush_sender_thread_send_custom_host_variables (TYPE_1__*) ;

__attribute__((used)) static inline void rrdpush_sender_thread_data_flush(RRDHOST *host) {
    rrdpush_buffer_lock(host);

    if(buffer_strlen(host->rrdpush_sender_buffer))
        error("STREAM %s [send]: discarding %zu bytes of metrics already in the buffer.", host->hostname, buffer_strlen(host->rrdpush_sender_buffer));

    buffer_flush(host->rrdpush_sender_buffer);

    rrdpush_sender_thread_reset_all_charts(host);
    rrdpush_sender_thread_send_custom_host_variables(host);

    rrdpush_buffer_unlock(host);
}
