
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_15__ {int len; int * data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_16__ {TYPE_5__* event; int log; int addr_expire_queue; int addr_rbtree; int addr6_expire_queue; int addr6_rbtree; } ;
typedef TYPE_3__ ngx_resolver_t ;
struct TYPE_17__ {TYPE_5__* waiting; } ;
typedef TYPE_4__ ngx_resolver_node_t ;
struct TYPE_14__ {int socklen; TYPE_6__* sockaddr; } ;
struct TYPE_18__ {scalar_t__ timer_set; struct TYPE_18__* event; TYPE_1__ addr; struct TYPE_18__* next; TYPE_4__* node; int state; TYPE_3__* resolver; } ;
typedef TYPE_5__ ngx_resolver_ctx_t ;
typedef int ngx_rbtree_t ;
typedef int ngx_queue_t ;
struct TYPE_19__ {int sa_family; } ;



 int NGX_AGAIN ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_RESOLVE_TIMEDOUT ;
 int NGX_SOCKADDR_STRLEN ;
 int ngx_del_timer (TYPE_5__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_2__*) ;
 int ngx_resolver_expire (TYPE_3__*,int *,int *) ;
 int ngx_resolver_free_locked (TYPE_3__*,TYPE_5__*) ;
 scalar_t__ ngx_resolver_resend_empty (TYPE_3__*) ;
 int ngx_sock_ntop (TYPE_6__*,int ,int *,int,int ) ;

void
ngx_resolve_addr_done(ngx_resolver_ctx_t *ctx)
{
    ngx_queue_t *expire_queue;
    ngx_rbtree_t *tree;
    ngx_resolver_t *r;
    ngx_resolver_ctx_t *w, **p;
    ngx_resolver_node_t *rn;

    r = ctx->resolver;

    switch (ctx->addr.sockaddr->sa_family) {
    default:
        tree = &r->addr_rbtree;
        expire_queue = &r->addr_expire_queue;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_CORE, r->log, 0,
                   "resolve addr done: %i", ctx->state);

    if (ctx->event && ctx->event->timer_set) {
        ngx_del_timer(ctx->event);
    }



    if (ctx->state == NGX_AGAIN || ctx->state == NGX_RESOLVE_TIMEDOUT) {

        rn = ctx->node;

        if (rn) {
            p = &rn->waiting;
            w = rn->waiting;

            while (w) {
                if (w == ctx) {
                    *p = w->next;

                    goto done;
                }

                p = &w->next;
                w = w->next;
            }
        }

        {
            u_char text[NGX_SOCKADDR_STRLEN];
            ngx_str_t addrtext;

            addrtext.data = text;
            addrtext.len = ngx_sock_ntop(ctx->addr.sockaddr, ctx->addr.socklen,
                                         text, NGX_SOCKADDR_STRLEN, 0);

            ngx_log_error(NGX_LOG_ALERT, r->log, 0,
                          "could not cancel %V resolving", &addrtext);
        }
    }

done:

    ngx_resolver_expire(r, tree, expire_queue);





    if (ctx->event) {
        ngx_resolver_free_locked(r, ctx->event);
    }

    ngx_resolver_free_locked(r, ctx);



    if (r->event->timer_set && ngx_resolver_resend_empty(r)) {
        ngx_del_timer(r->event);
    }
}
