
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_20__ {TYPE_3__* first; } ;
typedef TYPE_4__ ngx_http_v2_out_frame_t ;
struct TYPE_18__ {int length; int flags; } ;
struct TYPE_21__ {TYPE_2__ state; TYPE_1__* connection; } ;
typedef TYPE_5__ ngx_http_v2_connection_t ;
struct TYPE_22__ {int last; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_19__ {TYPE_6__* buf; } ;
struct TYPE_17__ {int log; } ;


 int NGX_HTTP_V2_ACK_FLAG ;
 int NGX_HTTP_V2_INTERNAL_ERROR ;
 int NGX_HTTP_V2_PING_FRAME ;
 int NGX_HTTP_V2_PING_SIZE ;
 int NGX_HTTP_V2_SIZE_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int ngx_cpymem (int ,int *,int) ;
 int * ngx_http_v2_connection_error (TYPE_5__*,int ) ;
 TYPE_4__* ngx_http_v2_get_frame (TYPE_5__*,int,int ,int,int ) ;
 int ngx_http_v2_queue_blocked_frame (TYPE_5__*,TYPE_4__*) ;
 int * ngx_http_v2_state_complete (TYPE_5__*,int *,int *) ;
 int * ngx_http_v2_state_save (TYPE_5__*,int *,int *,int * (*) (TYPE_5__*,int *,int *)) ;
 int * ngx_http_v2_state_skip (TYPE_5__*,int *,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_ping(ngx_http_v2_connection_t *h2c, u_char *pos, u_char *end)
{
    ngx_buf_t *buf;
    ngx_http_v2_out_frame_t *frame;

    if (h2c->state.length != NGX_HTTP_V2_PING_SIZE) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent PING frame with incorrect length %uz",
                      h2c->state.length);

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    if (end - pos < NGX_HTTP_V2_PING_SIZE) {
        return ngx_http_v2_state_save(h2c, pos, end, ngx_http_v2_state_ping);
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 PING frame");

    if (h2c->state.flags & NGX_HTTP_V2_ACK_FLAG) {
        return ngx_http_v2_state_skip(h2c, pos, end);
    }

    frame = ngx_http_v2_get_frame(h2c, NGX_HTTP_V2_PING_SIZE,
                                  NGX_HTTP_V2_PING_FRAME,
                                  NGX_HTTP_V2_ACK_FLAG, 0);
    if (frame == ((void*)0)) {
        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
    }

    buf = frame->first->buf;

    buf->last = ngx_cpymem(buf->last, pos, NGX_HTTP_V2_PING_SIZE);

    ngx_http_v2_queue_blocked_frame(h2c, frame);

    return ngx_http_v2_state_complete(h2c, pos + NGX_HTTP_V2_PING_SIZE, end);
}
