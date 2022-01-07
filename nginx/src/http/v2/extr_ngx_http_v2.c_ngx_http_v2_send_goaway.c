
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {TYPE_1__* first; } ;
typedef TYPE_3__ ngx_http_v2_out_frame_t ;
struct TYPE_14__ {int last_sid; TYPE_2__* connection; } ;
typedef TYPE_4__ ngx_http_v2_connection_t ;
struct TYPE_15__ {int last; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_12__ {int log; } ;
struct TYPE_11__ {TYPE_5__* buf; } ;


 int NGX_ERROR ;
 int NGX_HTTP_V2_GOAWAY_FRAME ;
 int NGX_HTTP_V2_GOAWAY_SIZE ;
 int NGX_HTTP_V2_NO_FLAG ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 TYPE_3__* ngx_http_v2_get_frame (TYPE_4__*,int ,int ,int ,int ) ;
 int ngx_http_v2_queue_blocked_frame (TYPE_4__*,TYPE_3__*) ;
 int ngx_http_v2_write_sid (int ,int ) ;
 int ngx_http_v2_write_uint32 (int ,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_send_goaway(ngx_http_v2_connection_t *h2c, ngx_uint_t status)
{
    ngx_buf_t *buf;
    ngx_http_v2_out_frame_t *frame;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 send GOAWAY frame: last sid %ui, error %ui",
                   h2c->last_sid, status);

    frame = ngx_http_v2_get_frame(h2c, NGX_HTTP_V2_GOAWAY_SIZE,
                                  NGX_HTTP_V2_GOAWAY_FRAME,
                                  NGX_HTTP_V2_NO_FLAG, 0);
    if (frame == ((void*)0)) {
        return NGX_ERROR;
    }

    buf = frame->first->buf;

    buf->last = ngx_http_v2_write_sid(buf->last, h2c->last_sid);
    buf->last = ngx_http_v2_write_uint32(buf->last, status);

    ngx_http_v2_queue_blocked_frame(h2c, frame);

    return NGX_OK;
}
