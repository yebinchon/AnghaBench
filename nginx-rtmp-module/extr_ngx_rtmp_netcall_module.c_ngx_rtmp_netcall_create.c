
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_12__ ;


struct TYPE_23__ {TYPE_8__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_24__ {int log; int bufsize; int timeout; } ;
typedef TYPE_3__ ngx_rtmp_netcall_srv_conf_t ;
struct TYPE_25__ {int detached; struct TYPE_25__* next; int * out; TYPE_7__* pc; int * handle; int sink; int filter; TYPE_2__* session; int url; int bufsize; int timeout; int * arg; } ;
typedef TYPE_4__ ngx_rtmp_netcall_session_t ;
struct TYPE_26__ {int argsize; int arg; int * (* create ) (TYPE_2__*,int ,int *) ;int * handle; int sink; int filter; int url; } ;
typedef TYPE_5__ ngx_rtmp_netcall_init_t ;
struct TYPE_27__ {TYPE_4__* cs; } ;
typedef TYPE_6__ ngx_rtmp_netcall_ctx_t ;
typedef int ngx_pool_t ;
struct TYPE_28__ {TYPE_8__* connection; TYPE_4__* data; int free; int get; int log; } ;
typedef TYPE_7__ ngx_peer_connection_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_29__ {scalar_t__ destroyed; TYPE_12__* write; TYPE_1__* read; int log; int * pool; TYPE_4__* data; } ;
typedef TYPE_8__ ngx_connection_t ;
struct TYPE_22__ {int handler; } ;
struct TYPE_21__ {int (* handler ) (TYPE_12__*) ;} ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int ngx_close_connection (TYPE_8__*) ;
 int * ngx_create_pool (int,int ) ;
 int ngx_destroy_pool (int *) ;
 scalar_t__ ngx_event_connect_peer (TYPE_7__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_memcpy (int *,int ,int) ;
 void* ngx_pcalloc (int *,int) ;
 TYPE_6__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 TYPE_3__* ngx_rtmp_get_module_srv_conf (TYPE_2__*,int ) ;
 int ngx_rtmp_netcall_free_peer ;
 int ngx_rtmp_netcall_get_peer ;
 int ngx_rtmp_netcall_module ;
 int ngx_rtmp_netcall_recv ;
 int ngx_rtmp_netcall_send (TYPE_12__*) ;
 int ngx_rtmp_set_ctx (TYPE_2__*,TYPE_6__*,int ) ;
 int * stub1 (TYPE_2__*,int ,int *) ;

ngx_int_t
ngx_rtmp_netcall_create(ngx_rtmp_session_t *s, ngx_rtmp_netcall_init_t *ci)
{
    ngx_rtmp_netcall_ctx_t *ctx;
    ngx_peer_connection_t *pc;
    ngx_rtmp_netcall_session_t *cs;
    ngx_rtmp_netcall_srv_conf_t *nscf;
    ngx_connection_t *c, *cc;
    ngx_pool_t *pool;
    ngx_int_t rc;

    pool = ((void*)0);
    c = s->connection;

    nscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_netcall_module);
    if (nscf == ((void*)0)) {
        goto error;
    }


    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_netcall_module);
    if (ctx == ((void*)0)) {
        ctx = ngx_pcalloc(c->pool,
                sizeof(ngx_rtmp_netcall_ctx_t));
        if (ctx == ((void*)0)) {
            return NGX_ERROR;
        }
        ngx_rtmp_set_ctx(s, ctx, ngx_rtmp_netcall_module);
    }





    pool = ngx_create_pool(4096, nscf->log);
    if (pool == ((void*)0)) {
        goto error;
    }

    pc = ngx_pcalloc(pool, sizeof(ngx_peer_connection_t));
    if (pc == ((void*)0)) {
        goto error;
    }

    cs = ngx_pcalloc(pool, sizeof(ngx_rtmp_netcall_session_t));
    if (cs == ((void*)0)) {
        goto error;
    }


    if (ci->argsize) {
        cs->arg = ngx_pcalloc(pool, ci->argsize);
        if (cs->arg == ((void*)0)) {
            goto error;
        }
        ngx_memcpy(cs->arg, ci->arg, ci->argsize);
    }

    cs->timeout = nscf->timeout;
    cs->bufsize = nscf->bufsize;
    cs->url = ci->url;
    cs->session = s;
    cs->filter = ci->filter;
    cs->sink = ci->sink;
    cs->handle = ci->handle;
    if (cs->handle == ((void*)0)) {
        cs->detached = 1;
    }

    pc->log = nscf->log;
    pc->get = ngx_rtmp_netcall_get_peer;
    pc->free = ngx_rtmp_netcall_free_peer;
    pc->data = cs;


    rc = ngx_event_connect_peer(pc);
    if (rc != NGX_OK && rc != NGX_AGAIN ) {
        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                "netcall: connection failed");
        goto error;
    }

    cc = pc->connection;
    cc->data = cs;
    cc->pool = pool;
    cs->pc = pc;

    cs->out = ci->create(s, ci->arg, pool);
    if (cs->out == ((void*)0)) {
        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                "netcall: creation failed");
        ngx_close_connection(pc->connection);
        goto error;
    }

    cc->write->handler = ngx_rtmp_netcall_send;
    cc->read->handler = ngx_rtmp_netcall_recv;

    if (!cs->detached) {
        cs->next = ctx->cs;
        ctx->cs = cs;
    }

    ngx_rtmp_netcall_send(cc->write);

    return c->destroyed ? NGX_ERROR : NGX_OK;

error:
    if (pool) {
        ngx_destroy_pool(pool);
    }

    return NGX_ERROR;
}
