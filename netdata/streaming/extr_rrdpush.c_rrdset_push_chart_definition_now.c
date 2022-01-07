
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int rrdpush_send_enabled; } ;
struct TYPE_10__ {TYPE_2__* rrdhost; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;


 int rrdpush_buffer_lock (TYPE_2__*) ;
 int rrdpush_buffer_unlock (TYPE_2__*) ;
 int rrdpush_send_chart_definition_nolock (TYPE_1__*) ;
 int rrdset_rdlock (TYPE_1__*) ;
 int rrdset_unlock (TYPE_1__*) ;
 int should_send_chart_matching (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

void rrdset_push_chart_definition_now(RRDSET *st) {
    RRDHOST *host = st->rrdhost;

    if(unlikely(!host->rrdpush_send_enabled || !should_send_chart_matching(st)))
        return;

    rrdset_rdlock(st);
    rrdpush_buffer_lock(host);
    rrdpush_send_chart_definition_nolock(st);
    rrdpush_buffer_unlock(host);
    rrdset_unlock(st);
}
