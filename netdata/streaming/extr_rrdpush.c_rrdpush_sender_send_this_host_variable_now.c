
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rrdpush_sender_connected; scalar_t__ rrdpush_sender_spawn; scalar_t__ rrdpush_send_enabled; } ;
typedef int RRDVAR ;
typedef TYPE_1__ RRDHOST ;


 int rrdpush_buffer_lock (TYPE_1__*) ;
 int rrdpush_buffer_unlock (TYPE_1__*) ;
 int rrdpush_sender_add_host_variable_to_buffer_nolock (TYPE_1__*,int *) ;

void rrdpush_sender_send_this_host_variable_now(RRDHOST *host, RRDVAR *rv) {
    if(host->rrdpush_send_enabled && host->rrdpush_sender_spawn && host->rrdpush_sender_connected) {
        rrdpush_buffer_lock(host);
        rrdpush_sender_add_host_variable_to_buffer_nolock(host, rv);
        rrdpush_buffer_unlock(host);
    }
}
