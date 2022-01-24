#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int ngx_uint_t ;
struct TYPE_20__ {int in_closed; int out_closed; TYPE_2__* request; } ;
typedef  TYPE_4__ ngx_http_v2_stream_t ;
struct TYPE_21__ {TYPE_4__* stream; } ;
typedef  TYPE_5__ ngx_http_v2_node_t ;
struct TYPE_19__ {int length; scalar_t__ sid; } ;
struct TYPE_22__ {TYPE_3__ state; TYPE_1__* connection; } ;
typedef  TYPE_6__ ngx_http_v2_connection_t ;
struct TYPE_23__ {int /*<<< orphan*/  (* handler ) (TYPE_7__*) ;} ;
typedef  TYPE_7__ ngx_event_t ;
struct TYPE_24__ {int error; TYPE_7__* read; int /*<<< orphan*/  log; } ;
typedef  TYPE_8__ ngx_connection_t ;
struct TYPE_18__ {TYPE_8__* connection; } ;
struct TYPE_17__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
#define  NGX_HTTP_V2_CANCEL 130 
#define  NGX_HTTP_V2_INTERNAL_ERROR 129 
 int /*<<< orphan*/  NGX_HTTP_V2_PROTOCOL_ERROR ; 
#define  NGX_HTTP_V2_REFUSED_STREAM 128 
 int NGX_HTTP_V2_RST_STREAM_SIZE ; 
 int /*<<< orphan*/  NGX_HTTP_V2_SIZE_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ * (*) (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 

__attribute__((used)) static u_char *
FUNC9(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    ngx_uint_t             status;
    ngx_event_t           *ev;
    ngx_connection_t      *fc;
    ngx_http_v2_node_t    *node;
    ngx_http_v2_stream_t  *stream;

    if (h2c->state.length != NGX_HTTP_V2_RST_STREAM_SIZE) {
        FUNC7(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent RST_STREAM frame with incorrect length %uz",
                      h2c->state.length);

        return FUNC0(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    if (end - pos < NGX_HTTP_V2_RST_STREAM_SIZE) {
        return FUNC4(h2c, pos, end,
                                      ngx_http_v2_state_rst_stream);
    }

    status = FUNC2(pos);

    pos += NGX_HTTP_V2_RST_STREAM_SIZE;

    FUNC6(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 RST_STREAM frame, sid:%ui status:%ui",
                   h2c->state.sid, status);

    if (h2c->state.sid == 0) {
        FUNC7(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent RST_STREAM frame with incorrect identifier");

        return FUNC0(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    node = FUNC1(h2c, h2c->state.sid, 0);

    if (node == NULL || node->stream == NULL) {
        FUNC5(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                       "unknown http2 stream");

        return FUNC3(h2c, pos, end);
    }

    stream = node->stream;

    stream->in_closed = 1;
    stream->out_closed = 1;

    fc = stream->request->connection;
    fc->error = 1;

    switch (status) {

    case NGX_HTTP_V2_CANCEL:
        FUNC7(NGX_LOG_INFO, fc->log, 0,
                      "client canceled stream %ui", h2c->state.sid);
        break;

    case NGX_HTTP_V2_REFUSED_STREAM:
        FUNC7(NGX_LOG_INFO, fc->log, 0,
                      "client refused stream %ui", h2c->state.sid);
        break;

    case NGX_HTTP_V2_INTERNAL_ERROR:
        FUNC7(NGX_LOG_INFO, fc->log, 0,
                      "client terminated stream %ui due to internal error",
                      h2c->state.sid);
        break;

    default:
        FUNC7(NGX_LOG_INFO, fc->log, 0,
                      "client terminated stream %ui with status %ui",
                      h2c->state.sid, status);
        break;
    }

    ev = fc->read;
    ev->handler(ev);

    return FUNC3(h2c, pos, end);
}