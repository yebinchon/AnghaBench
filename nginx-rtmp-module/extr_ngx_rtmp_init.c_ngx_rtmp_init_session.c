
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;


typedef int ngx_rtmp_stream_t ;
struct TYPE_23__ {int out_queue; int buflen; int timeout; int epoch; int posted_dry_events; int * in_streams; int out_cork; int * ctx; TYPE_7__* connection; int * addr_text; scalar_t__* srv_conf; int main_conf; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_24__ {TYPE_3__* session; int * client; } ;
typedef TYPE_4__ ngx_rtmp_error_log_ctx_t ;
struct TYPE_25__ {int out_queue; int max_streams; int buflen; int timeout; int out_cork; } ;
typedef TYPE_5__ ngx_rtmp_core_srv_conf_t ;
struct TYPE_26__ {int addr_text; TYPE_1__* ctx; } ;
typedef TYPE_6__ ngx_rtmp_addr_conf_t ;
struct TYPE_27__ {int pool; int log_error; TYPE_2__* log; int number; int addr_text; TYPE_3__* data; } ;
typedef TYPE_7__ ngx_connection_t ;
typedef int ngx_chain_t ;
struct TYPE_22__ {int * action; TYPE_4__* data; int handler; int connection; } ;
struct TYPE_21__ {scalar_t__* srv_conf; int main_conf; } ;
struct TYPE_20__ {size_t ctx_index; } ;


 int NGX_ERROR_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_RTMP_CONNECT ;
 int NGX_RTMP_DEFAULT_CHUNK_SIZE ;
 int ngx_current_msec ;
 TYPE_4__* ngx_palloc (int ,int) ;
 void* ngx_pcalloc (int ,int) ;
 int ngx_queue_init (int *) ;
 int ngx_rtmp_close_connection (TYPE_7__*) ;
 TYPE_14__ ngx_rtmp_core_module ;
 int ngx_rtmp_finalize_session (TYPE_3__*) ;
 scalar_t__ ngx_rtmp_fire_event (TYPE_3__*,int ,int *,int *) ;
 TYPE_5__* ngx_rtmp_get_module_srv_conf (TYPE_3__*,TYPE_14__) ;
 int ngx_rtmp_log_error ;
 int ngx_rtmp_max_module ;
 int ngx_rtmp_set_chunk_size (TYPE_3__*,int ) ;

ngx_rtmp_session_t *
ngx_rtmp_init_session(ngx_connection_t *c, ngx_rtmp_addr_conf_t *addr_conf)
{
    ngx_rtmp_session_t *s;
    ngx_rtmp_core_srv_conf_t *cscf;
    ngx_rtmp_error_log_ctx_t *ctx;

    s = ngx_pcalloc(c->pool, sizeof(ngx_rtmp_session_t) +
            sizeof(ngx_chain_t *) * ((ngx_rtmp_core_srv_conf_t *)
                addr_conf->ctx-> srv_conf[ngx_rtmp_core_module
                    .ctx_index])->out_queue);
    if (s == ((void*)0)) {
        ngx_rtmp_close_connection(c);
        return ((void*)0);
    }

    s->main_conf = addr_conf->ctx->main_conf;
    s->srv_conf = addr_conf->ctx->srv_conf;

    s->addr_text = &addr_conf->addr_text;

    c->data = s;
    s->connection = c;

    ctx = ngx_palloc(c->pool, sizeof(ngx_rtmp_error_log_ctx_t));
    if (ctx == ((void*)0)) {
        ngx_rtmp_close_connection(c);
        return ((void*)0);
    }

    ctx->client = &c->addr_text;
    ctx->session = s;

    c->log->connection = c->number;
    c->log->handler = ngx_rtmp_log_error;
    c->log->data = ctx;
    c->log->action = ((void*)0);

    c->log_error = NGX_ERROR_INFO;

    s->ctx = ngx_pcalloc(c->pool, sizeof(void *) * ngx_rtmp_max_module);
    if (s->ctx == ((void*)0)) {
        ngx_rtmp_close_connection(c);
        return ((void*)0);
    }

    cscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_core_module);

    s->out_queue = cscf->out_queue;
    s->out_cork = cscf->out_cork;
    s->in_streams = ngx_pcalloc(c->pool, sizeof(ngx_rtmp_stream_t)
            * cscf->max_streams);
    if (s->in_streams == ((void*)0)) {
        ngx_rtmp_close_connection(c);
        return ((void*)0);
    }





    s->epoch = ngx_current_msec;
    s->timeout = cscf->timeout;
    s->buflen = cscf->buflen;
    ngx_rtmp_set_chunk_size(s, NGX_RTMP_DEFAULT_CHUNK_SIZE);


    if (ngx_rtmp_fire_event(s, NGX_RTMP_CONNECT, ((void*)0), ((void*)0)) != NGX_OK) {
        ngx_rtmp_finalize_session(s);
        return ((void*)0);
    }

    return s;
}
