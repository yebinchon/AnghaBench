
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_20__ {int in_closed; int out_closed; TYPE_2__* request; } ;
typedef TYPE_4__ ngx_http_v2_stream_t ;
struct TYPE_21__ {TYPE_4__* stream; } ;
typedef TYPE_5__ ngx_http_v2_node_t ;
struct TYPE_19__ {int length; scalar_t__ sid; } ;
struct TYPE_22__ {TYPE_3__ state; TYPE_1__* connection; } ;
typedef TYPE_6__ ngx_http_v2_connection_t ;
struct TYPE_23__ {int (* handler ) (TYPE_7__*) ;} ;
typedef TYPE_7__ ngx_event_t ;
struct TYPE_24__ {int error; TYPE_7__* read; int log; } ;
typedef TYPE_8__ ngx_connection_t ;
struct TYPE_18__ {TYPE_8__* connection; } ;
struct TYPE_17__ {int log; } ;




 int NGX_HTTP_V2_PROTOCOL_ERROR ;

 int NGX_HTTP_V2_RST_STREAM_SIZE ;
 int NGX_HTTP_V2_SIZE_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int * ngx_http_v2_connection_error (TYPE_6__*,int ) ;
 TYPE_5__* ngx_http_v2_get_node_by_id (TYPE_6__*,scalar_t__,int ) ;
 int ngx_http_v2_parse_uint32 (int *) ;
 int * ngx_http_v2_state_complete (TYPE_6__*,int *,int *) ;
 int * ngx_http_v2_state_save (TYPE_6__*,int *,int *,int * (*) (TYPE_6__*,int *,int *)) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,scalar_t__,int) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int stub1 (TYPE_7__*) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_rst_stream(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    ngx_uint_t status;
    ngx_event_t *ev;
    ngx_connection_t *fc;
    ngx_http_v2_node_t *node;
    ngx_http_v2_stream_t *stream;

    if (h2c->state.length != NGX_HTTP_V2_RST_STREAM_SIZE) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent RST_STREAM frame with incorrect length %uz",
                      h2c->state.length);

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    if (end - pos < NGX_HTTP_V2_RST_STREAM_SIZE) {
        return ngx_http_v2_state_save(h2c, pos, end,
                                      ngx_http_v2_state_rst_stream);
    }

    status = ngx_http_v2_parse_uint32(pos);

    pos += NGX_HTTP_V2_RST_STREAM_SIZE;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 RST_STREAM frame, sid:%ui status:%ui",
                   h2c->state.sid, status);

    if (h2c->state.sid == 0) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent RST_STREAM frame with incorrect identifier");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    node = ngx_http_v2_get_node_by_id(h2c, h2c->state.sid, 0);

    if (node == ((void*)0) || node->stream == ((void*)0)) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                       "unknown http2 stream");

        return ngx_http_v2_state_complete(h2c, pos, end);
    }

    stream = node->stream;

    stream->in_closed = 1;
    stream->out_closed = 1;

    fc = stream->request->connection;
    fc->error = 1;

    switch (status) {

    case 130:
        ngx_log_error(NGX_LOG_INFO, fc->log, 0,
                      "client canceled stream %ui", h2c->state.sid);
        break;

    case 128:
        ngx_log_error(NGX_LOG_INFO, fc->log, 0,
                      "client refused stream %ui", h2c->state.sid);
        break;

    case 129:
        ngx_log_error(NGX_LOG_INFO, fc->log, 0,
                      "client terminated stream %ui due to internal error",
                      h2c->state.sid);
        break;

    default:
        ngx_log_error(NGX_LOG_INFO, fc->log, 0,
                      "client terminated stream %ui with status %ui",
                      h2c->state.sid, status);
        break;
    }

    ev = fc->read;
    ev->handler(ev);

    return ngx_http_v2_state_complete(h2c, pos, end);
}
