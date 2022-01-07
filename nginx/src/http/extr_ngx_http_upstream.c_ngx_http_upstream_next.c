
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int ngx_uint_t ;
typedef scalar_t__ ngx_msec_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_28__ {scalar_t__ tries; scalar_t__ start_time; TYPE_10__* connection; scalar_t__ cached; int * sockaddr; int data; int (* free ) (TYPE_9__*,int ,int) ;} ;
struct TYPE_26__ {scalar_t__ cache_status; scalar_t__ (* reinit_request ) (TYPE_7__*) ;TYPE_9__ peer; TYPE_2__* conf; scalar_t__ request_sent; TYPE_1__* state; } ;
typedef TYPE_6__ ngx_http_upstream_t ;
struct TYPE_27__ {int method; TYPE_4__* connection; TYPE_3__* cache; scalar_t__ request_body_no_buffering; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_25__ {int no_wait_shutdown; int no_send_shutdown; } ;
struct TYPE_24__ {int log; scalar_t__ error; } ;
struct TYPE_23__ {scalar_t__ stale_error; } ;
struct TYPE_22__ {scalar_t__ next_upstream_timeout; int next_upstream; int cache_use_stale; } ;
struct TYPE_21__ {int status; int bytes_sent; } ;
struct TYPE_20__ {int fd; scalar_t__ pool; TYPE_5__* ssl; int sent; } ;


 scalar_t__ NGX_DONE ;
 int NGX_ETIMEDOUT ;
 int NGX_HTTP_BAD_GATEWAY ;
 scalar_t__ NGX_HTTP_CACHE_EXPIRED ;
 scalar_t__ NGX_HTTP_CACHE_STALE ;
 int NGX_HTTP_CLIENT_CLOSED_REQUEST ;
 int NGX_HTTP_FORBIDDEN ;
 int NGX_HTTP_GATEWAY_TIME_OUT ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_LOCK ;
 int NGX_HTTP_NOT_FOUND ;
 int NGX_HTTP_PATCH ;
 int NGX_HTTP_POST ;
 int NGX_HTTP_SERVICE_UNAVAILABLE ;
 int NGX_HTTP_TOO_MANY_REQUESTS ;
 int NGX_HTTP_UPSTREAM_FT_ERROR ;






 int NGX_HTTP_UPSTREAM_FT_NON_IDEMPOTENT ;

 scalar_t__ NGX_HTTP_UPSTREAM_INVALID_HEADER ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int NGX_PEER_FAILED ;
 int NGX_PEER_NEXT ;
 int ngx_close_connection (TYPE_10__*) ;
 scalar_t__ ngx_current_msec ;
 int ngx_destroy_pool (scalar_t__) ;
 scalar_t__ ngx_http_upstream_cache_send (TYPE_7__*,TYPE_6__*) ;
 int ngx_http_upstream_connect (TYPE_7__*,TYPE_6__*) ;
 int ngx_http_upstream_finalize_request (TYPE_7__*,TYPE_6__*,int) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_ssl_shutdown (TYPE_10__*) ;
 int stub1 (TYPE_9__*,int ,int) ;
 scalar_t__ stub2 (TYPE_7__*) ;

__attribute__((used)) static void
ngx_http_upstream_next(ngx_http_request_t *r, ngx_http_upstream_t *u,
    ngx_uint_t ft_type)
{
    ngx_msec_t timeout;
    ngx_uint_t status, state;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http next upstream, %xi", ft_type);

    if (u->peer.sockaddr) {

        if (u->peer.connection) {
            u->state->bytes_sent = u->peer.connection->sent;
        }

        if (ft_type == 134
            || ft_type == 133)
        {
            state = NGX_PEER_NEXT;

        } else {
            state = NGX_PEER_FAILED;
        }

        u->peer.free(&u->peer, u->peer.data, state);
        u->peer.sockaddr = ((void*)0);
    }

    if (ft_type == 128) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, NGX_ETIMEDOUT,
                      "upstream timed out");
    }

    if (u->peer.cached && ft_type == NGX_HTTP_UPSTREAM_FT_ERROR) {

        u->peer.tries++;
    }

    switch (ft_type) {

    case 128:
    case 129:
        status = NGX_HTTP_GATEWAY_TIME_OUT;
        break;

    case 131:
        status = NGX_HTTP_INTERNAL_SERVER_ERROR;
        break;

    case 130:
        status = NGX_HTTP_SERVICE_UNAVAILABLE;
        break;

    case 134:
        status = NGX_HTTP_FORBIDDEN;
        break;

    case 133:
        status = NGX_HTTP_NOT_FOUND;
        break;

    case 132:
        status = NGX_HTTP_TOO_MANY_REQUESTS;
        break;






    default:
        status = NGX_HTTP_BAD_GATEWAY;
    }

    if (r->connection->error) {
        ngx_http_upstream_finalize_request(r, u,
                                           NGX_HTTP_CLIENT_CLOSED_REQUEST);
        return;
    }

    u->state->status = status;

    timeout = u->conf->next_upstream_timeout;

    if (u->request_sent
        && (r->method & (NGX_HTTP_POST|NGX_HTTP_LOCK|NGX_HTTP_PATCH)))
    {
        ft_type |= NGX_HTTP_UPSTREAM_FT_NON_IDEMPOTENT;
    }

    if (u->peer.tries == 0
        || ((u->conf->next_upstream & ft_type) != ft_type)
        || (u->request_sent && r->request_body_no_buffering)
        || (timeout && ngx_current_msec - u->peer.start_time >= timeout))
    {
        ngx_http_upstream_finalize_request(r, u, status);
        return;
    }

    if (u->peer.connection) {
        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "close http upstream connection: %d",
                       u->peer.connection->fd);
        if (u->peer.connection->pool) {
            ngx_destroy_pool(u->peer.connection->pool);
        }

        ngx_close_connection(u->peer.connection);
        u->peer.connection = ((void*)0);
    }

    ngx_http_upstream_connect(r, u);
}
