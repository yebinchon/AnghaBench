
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_24__ ;
typedef struct TYPE_35__ TYPE_23__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_12__ ;
typedef struct TYPE_32__ TYPE_11__ ;
typedef struct TYPE_31__ TYPE_10__ ;


typedef int u_char ;
struct TYPE_38__ {int * last; int * pos; int * end; int * start; } ;
struct TYPE_33__ {int data; int (* notify ) (TYPE_12__*,int ,int ) ;int name; TYPE_10__* connection; } ;
struct TYPE_40__ {int connected; void* download_rate; void* upload_rate; scalar_t__ proxy_protocol; TYPE_11__* upstream_out; int free; TYPE_3__ upstream_buf; TYPE_12__ peer; scalar_t__ start_time; TYPE_2__* state; } ;
typedef TYPE_5__ ngx_stream_upstream_t ;
struct TYPE_41__ {TYPE_10__* connection; TYPE_5__* upstream; } ;
typedef TYPE_6__ ngx_stream_session_t ;
struct TYPE_42__ {int buffer_size; int download_rate; int upload_rate; scalar_t__ ssl; } ;
typedef TYPE_7__ ngx_stream_proxy_srv_conf_t ;
struct TYPE_43__ {scalar_t__ tcp_nodelay; } ;
typedef TYPE_8__ ngx_stream_core_srv_conf_t ;
struct TYPE_44__ {int len; int * data; } ;
typedef TYPE_9__ ngx_str_t ;
typedef int * ngx_log_handler_pt ;
struct TYPE_31__ {scalar_t__ type; TYPE_23__* read; TYPE_1__* write; int pool; TYPE_24__* log; TYPE_4__* buffer; int * ssl; } ;
typedef TYPE_10__ ngx_connection_t ;
struct TYPE_32__ {struct TYPE_32__* next; TYPE_4__* buf; } ;
typedef TYPE_11__ ngx_chain_t ;
typedef void* ngx_buf_tag_t ;
struct TYPE_39__ {scalar_t__ pos; scalar_t__ last; int flush; int temporary; void* tag; scalar_t__ last_buf; } ;
struct TYPE_37__ {scalar_t__ connect_time; } ;
struct TYPE_36__ {scalar_t__ log_level; int * handler; } ;
struct TYPE_35__ {scalar_t__ ready; void* handler; } ;
struct TYPE_34__ {void* handler; } ;


 int NGX_LOG_DEBUG_STREAM ;
 scalar_t__ NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_PROXY_PROTOCOL_MAX_HEADER ;
 int NGX_SOCKADDR_STRLEN ;
 int NGX_STREAM_INTERNAL_SERVER_ERROR ;
 int NGX_STREAM_UPSTREAM_NOTIFY_CONNECT ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 TYPE_11__* ngx_chain_get_free_buf (int ,int *) ;
 scalar_t__ ngx_connection_local_sockaddr (TYPE_10__*,TYPE_9__*,int) ;
 scalar_t__ ngx_current_msec ;
 int ngx_log_debug0 (int ,TYPE_24__*,int ,char*) ;
 int ngx_log_debug1 (int ,TYPE_24__*,int ,char*,scalar_t__) ;
 int ngx_log_error (scalar_t__,TYPE_24__*,int ,char*,char*,TYPE_9__*,int ) ;
 int * ngx_pnalloc (int ,int) ;
 int ngx_post_event (TYPE_23__*,int *) ;
 int ngx_posted_events ;
 int * ngx_proxy_protocol_write (TYPE_10__*,int *,int *) ;
 void* ngx_stream_complex_value_size (TYPE_6__*,int ,int ) ;
 int ngx_stream_core_module ;
 void* ngx_stream_get_module_srv_conf (TYPE_6__*,int ) ;
 int ngx_stream_proxy_finalize (TYPE_6__*,int ) ;
 int ngx_stream_proxy_module ;
 int ngx_stream_proxy_next_upstream (TYPE_6__*) ;
 int ngx_stream_proxy_process (TYPE_6__*,int ,int) ;
 scalar_t__ ngx_stream_proxy_send_proxy_protocol (TYPE_6__*) ;
 int ngx_stream_proxy_ssl_init_connection (TYPE_6__*) ;
 void* ngx_stream_proxy_upstream_handler ;
 scalar_t__ ngx_tcp_nodelay (TYPE_10__*) ;
 int stub1 (TYPE_12__*,int ,int ) ;

__attribute__((used)) static void
ngx_stream_proxy_init_upstream(ngx_stream_session_t *s)
{
    u_char *p;
    ngx_chain_t *cl;
    ngx_connection_t *c, *pc;
    ngx_log_handler_pt handler;
    ngx_stream_upstream_t *u;
    ngx_stream_core_srv_conf_t *cscf;
    ngx_stream_proxy_srv_conf_t *pscf;

    u = s->upstream;
    pc = u->peer.connection;

    cscf = ngx_stream_get_module_srv_conf(s, ngx_stream_core_module);

    if (pc->type == SOCK_STREAM
        && cscf->tcp_nodelay
        && ngx_tcp_nodelay(pc) != NGX_OK)
    {
        ngx_stream_proxy_next_upstream(s);
        return;
    }

    pscf = ngx_stream_get_module_srv_conf(s, ngx_stream_proxy_module);
    c = s->connection;

    if (c->log->log_level >= NGX_LOG_INFO) {
        ngx_str_t str;
        u_char addr[NGX_SOCKADDR_STRLEN];

        str.len = NGX_SOCKADDR_STRLEN;
        str.data = addr;

        if (ngx_connection_local_sockaddr(pc, &str, 1) == NGX_OK) {
            handler = c->log->handler;
            c->log->handler = ((void*)0);

            ngx_log_error(NGX_LOG_INFO, c->log, 0,
                          "%sproxy %V connected to %V",
                          pc->type == SOCK_DGRAM ? "udp " : "",
                          &str, u->peer.name);

            c->log->handler = handler;
        }
    }

    u->state->connect_time = ngx_current_msec - u->start_time;

    if (u->peer.notify) {
        u->peer.notify(&u->peer, u->peer.data,
                       NGX_STREAM_UPSTREAM_NOTIFY_CONNECT);
    }

    if (u->upstream_buf.start == ((void*)0)) {
        p = ngx_pnalloc(c->pool, pscf->buffer_size);
        if (p == ((void*)0)) {
            ngx_stream_proxy_finalize(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
            return;
        }

        u->upstream_buf.start = p;
        u->upstream_buf.end = p + pscf->buffer_size;
        u->upstream_buf.pos = p;
        u->upstream_buf.last = p;
    }

    if (c->buffer && c->buffer->pos < c->buffer->last) {
        ngx_log_debug1(NGX_LOG_DEBUG_STREAM, c->log, 0,
                       "stream proxy add preread buffer: %uz",
                       c->buffer->last - c->buffer->pos);

        cl = ngx_chain_get_free_buf(c->pool, &u->free);
        if (cl == ((void*)0)) {
            ngx_stream_proxy_finalize(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
            return;
        }

        *cl->buf = *c->buffer;

        cl->buf->tag = (ngx_buf_tag_t) &ngx_stream_proxy_module;
        cl->buf->flush = 1;

        cl->next = u->upstream_out;
        u->upstream_out = cl;
    }

    if (u->proxy_protocol) {
        ngx_log_debug0(NGX_LOG_DEBUG_STREAM, c->log, 0,
                       "stream proxy add PROXY protocol header");

        cl = ngx_chain_get_free_buf(c->pool, &u->free);
        if (cl == ((void*)0)) {
            ngx_stream_proxy_finalize(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
            return;
        }

        p = ngx_pnalloc(c->pool, NGX_PROXY_PROTOCOL_MAX_HEADER);
        if (p == ((void*)0)) {
            ngx_stream_proxy_finalize(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
            return;
        }

        cl->buf->pos = p;

        p = ngx_proxy_protocol_write(c, p, p + NGX_PROXY_PROTOCOL_MAX_HEADER);
        if (p == ((void*)0)) {
            ngx_stream_proxy_finalize(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
            return;
        }

        cl->buf->last = p;
        cl->buf->temporary = 1;
        cl->buf->flush = 0;
        cl->buf->last_buf = 0;
        cl->buf->tag = (ngx_buf_tag_t) &ngx_stream_proxy_module;

        cl->next = u->upstream_out;
        u->upstream_out = cl;

        u->proxy_protocol = 0;
    }

    u->upload_rate = ngx_stream_complex_value_size(s, pscf->upload_rate, 0);
    u->download_rate = ngx_stream_complex_value_size(s, pscf->download_rate, 0);

    u->connected = 1;

    pc->read->handler = ngx_stream_proxy_upstream_handler;
    pc->write->handler = ngx_stream_proxy_upstream_handler;

    if (pc->read->ready) {
        ngx_post_event(pc->read, &ngx_posted_events);
    }

    ngx_stream_proxy_process(s, 0, 1);
}
