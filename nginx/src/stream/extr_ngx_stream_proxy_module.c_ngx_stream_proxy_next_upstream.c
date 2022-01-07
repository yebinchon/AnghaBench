
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ tries; scalar_t__ start_time; TYPE_7__* connection; int * sockaddr; int data; int (* free ) (TYPE_8__*,int ,int ) ;} ;
struct TYPE_19__ {TYPE_8__ peer; TYPE_3__* state; int received; int * upstream_out; } ;
typedef TYPE_4__ ngx_stream_upstream_t ;
struct TYPE_20__ {TYPE_1__* connection; TYPE_4__* upstream; } ;
typedef TYPE_5__ ngx_stream_session_t ;
struct TYPE_21__ {scalar_t__ next_upstream_timeout; int next_upstream; } ;
typedef TYPE_6__ ngx_stream_proxy_srv_conf_t ;
typedef scalar_t__ ngx_msec_t ;
struct TYPE_22__ {int sent; TYPE_2__* ssl; int fd; scalar_t__ buffered; } ;
typedef TYPE_7__ ngx_connection_t ;
struct TYPE_18__ {int bytes_sent; int bytes_received; } ;
struct TYPE_17__ {int no_wait_shutdown; int no_send_shutdown; } ;
struct TYPE_16__ {scalar_t__ type; int log; } ;


 int NGX_LOG_DEBUG_STREAM ;
 int NGX_LOG_ERR ;
 int NGX_PEER_FAILED ;
 int NGX_STREAM_BAD_GATEWAY ;
 int NGX_STREAM_INTERNAL_SERVER_ERROR ;
 scalar_t__ SOCK_DGRAM ;
 int ngx_close_connection (TYPE_7__*) ;
 scalar_t__ ngx_current_msec ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_ssl_shutdown (TYPE_7__*) ;
 TYPE_6__* ngx_stream_get_module_srv_conf (TYPE_5__*,int ) ;
 int ngx_stream_proxy_connect (TYPE_5__*) ;
 int ngx_stream_proxy_finalize (TYPE_5__*,int ) ;
 int ngx_stream_proxy_module ;
 int stub1 (TYPE_8__*,int ,int ) ;

__attribute__((used)) static void
ngx_stream_proxy_next_upstream(ngx_stream_session_t *s)
{
    ngx_msec_t timeout;
    ngx_connection_t *pc;
    ngx_stream_upstream_t *u;
    ngx_stream_proxy_srv_conf_t *pscf;

    ngx_log_debug0(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "stream proxy next upstream");

    u = s->upstream;
    pc = u->peer.connection;

    if (pc && pc->buffered) {
        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                      "buffered data on next upstream");
        ngx_stream_proxy_finalize(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    if (s->connection->type == SOCK_DGRAM) {
        u->upstream_out = ((void*)0);
    }

    if (u->peer.sockaddr) {
        u->peer.free(&u->peer, u->peer.data, NGX_PEER_FAILED);
        u->peer.sockaddr = ((void*)0);
    }

    pscf = ngx_stream_get_module_srv_conf(s, ngx_stream_proxy_module);

    timeout = pscf->next_upstream_timeout;

    if (u->peer.tries == 0
        || !pscf->next_upstream
        || (timeout && ngx_current_msec - u->peer.start_time >= timeout))
    {
        ngx_stream_proxy_finalize(s, NGX_STREAM_BAD_GATEWAY);
        return;
    }

    if (pc) {
        ngx_log_debug1(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                       "close proxy upstream connection: %d", pc->fd);
        u->state->bytes_received = u->received;
        u->state->bytes_sent = pc->sent;

        ngx_close_connection(pc);
        u->peer.connection = ((void*)0);
    }

    ngx_stream_proxy_connect(s);
}
