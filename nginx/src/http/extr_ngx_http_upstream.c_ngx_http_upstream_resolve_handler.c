
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_24__ {int len; int * data; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_25__ {size_t async; size_t naddrs; TYPE_1__* addrs; scalar_t__ state; int name; TYPE_8__* data; } ;
typedef TYPE_5__ ngx_resolver_ctx_t ;
struct TYPE_22__ {scalar_t__ tries; int start_time; } ;
struct TYPE_26__ {TYPE_3__* conf; TYPE_2__ peer; TYPE_7__* resolved; } ;
typedef TYPE_6__ ngx_http_upstream_t ;
struct TYPE_27__ {size_t naddrs; int * ctx; TYPE_1__* addrs; } ;
typedef TYPE_7__ ngx_http_upstream_resolved_t ;
struct TYPE_28__ {TYPE_9__* connection; int args; int uri; TYPE_6__* upstream; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_29__ {int log; } ;
typedef TYPE_9__ ngx_connection_t ;
struct TYPE_23__ {scalar_t__ next_upstream_tries; } ;
struct TYPE_21__ {int socklen; int sockaddr; } ;


 int NGX_HTTP_BAD_GATEWAY ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int NGX_SOCKADDR_STRLEN ;
 int ngx_current_msec ;
 int ngx_http_run_posted_requests (TYPE_9__*) ;
 int ngx_http_set_log_request (int ,TYPE_8__*) ;
 int ngx_http_upstream_connect (TYPE_8__*,TYPE_6__*) ;
 scalar_t__ ngx_http_upstream_create_round_robin_peer (TYPE_8__*,TYPE_7__*) ;
 int ngx_http_upstream_finalize_request (TYPE_8__*,TYPE_6__*,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_4__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int *) ;
 int ngx_log_error (int ,int ,int ,char*,int *,scalar_t__,int ) ;
 int ngx_resolve_name_done (TYPE_5__*) ;
 int ngx_resolver_strerror (scalar_t__) ;
 int ngx_sock_ntop (int ,int ,int *,int,int ) ;

__attribute__((used)) static void
ngx_http_upstream_resolve_handler(ngx_resolver_ctx_t *ctx)
{
    ngx_uint_t run_posted;
    ngx_connection_t *c;
    ngx_http_request_t *r;
    ngx_http_upstream_t *u;
    ngx_http_upstream_resolved_t *ur;

    run_posted = ctx->async;

    r = ctx->data;
    c = r->connection;

    u = r->upstream;
    ur = u->resolved;

    ngx_http_set_log_request(c->log, r);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http upstream resolve: \"%V?%V\"", &r->uri, &r->args);

    if (ctx->state) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "%V could not be resolved (%i: %s)",
                      &ctx->name, ctx->state,
                      ngx_resolver_strerror(ctx->state));

        ngx_http_upstream_finalize_request(r, u, NGX_HTTP_BAD_GATEWAY);
        goto failed;
    }

    ur->naddrs = ctx->naddrs;
    ur->addrs = ctx->addrs;
    if (ngx_http_upstream_create_round_robin_peer(r, ur) != NGX_OK) {
        ngx_http_upstream_finalize_request(r, u,
                                           NGX_HTTP_INTERNAL_SERVER_ERROR);
        goto failed;
    }

    ngx_resolve_name_done(ctx);
    ur->ctx = ((void*)0);

    u->peer.start_time = ngx_current_msec;

    if (u->conf->next_upstream_tries
        && u->peer.tries > u->conf->next_upstream_tries)
    {
        u->peer.tries = u->conf->next_upstream_tries;
    }

    ngx_http_upstream_connect(r, u);

failed:

    if (run_posted) {
        ngx_http_run_posted_requests(c);
    }
}
