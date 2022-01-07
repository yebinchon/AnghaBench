
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_5__ {int event; int addr6_resend_queue; int addr6_rbtree; int addr_resend_queue; int addr_rbtree; int srv_resend_queue; int srv_rbtree; int name_resend_queue; int name_rbtree; int log; } ;
typedef TYPE_1__ ngx_resolver_t ;
typedef int ngx_msec_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
typedef TYPE_2__ ngx_event_t ;


 int NGX_LOG_DEBUG_CORE ;
 int ngx_add_timer (int ,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_min (int,int) ;
 int ngx_resolver_resend (TYPE_1__*,int *,int *) ;

__attribute__((used)) static void
ngx_resolver_resend_handler(ngx_event_t *ev)
{
    time_t timer, atimer, stimer, ntimer;



    ngx_resolver_t *r;

    r = ev->data;

    ngx_log_debug0(NGX_LOG_DEBUG_CORE, r->log, 0,
                   "resolver resend handler");



    ntimer = ngx_resolver_resend(r, &r->name_rbtree, &r->name_resend_queue);

    stimer = ngx_resolver_resend(r, &r->srv_rbtree, &r->srv_resend_queue);





    atimer = ngx_resolver_resend(r, &r->addr_rbtree, &r->addr_resend_queue);
    timer = ntimer;

    if (timer == 0) {
        timer = atimer;

    } else if (atimer) {
        timer = ngx_min(timer, atimer);
    }

    if (timer == 0) {
        timer = stimer;

    } else if (stimer) {
        timer = ngx_min(timer, stimer);
    }
    if (timer) {
        ngx_add_timer(r->event, (ngx_msec_t) (timer * 1000));
    }
}
