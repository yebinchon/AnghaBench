#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_char ;
typedef  int ngx_uint_t ;
struct TYPE_28__ {int in_closed; TYPE_7__* node; TYPE_1__* request; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_5__ ngx_http_v2_stream_t ;
struct TYPE_29__ {scalar_t__ concurrent_streams; scalar_t__ preread_size; scalar_t__ max_requests; int /*<<< orphan*/  max_header_size; } ;
typedef  TYPE_6__ ngx_http_v2_srv_conf_t ;
struct TYPE_30__ {int weight; int /*<<< orphan*/ * parent; TYPE_5__* stream; int /*<<< orphan*/  reuse; } ;
typedef  TYPE_7__ ngx_http_v2_node_t ;
struct TYPE_27__ {int flags; size_t length; size_t padding; int sid; int keep_pool; int /*<<< orphan*/ * pool; TYPE_5__* stream; int /*<<< orphan*/  header_limit; } ;
struct TYPE_31__ {int goaway; int last_sid; scalar_t__ processing; TYPE_4__ state; TYPE_2__* connection; int /*<<< orphan*/  closed_nodes; int /*<<< orphan*/  settings_ack; TYPE_3__* http_connection; } ;
typedef  TYPE_8__ ngx_http_v2_connection_t ;
struct TYPE_26__ {int /*<<< orphan*/  conf_ctx; } ;
struct TYPE_25__ {scalar_t__ requests; int /*<<< orphan*/  log; } ;
struct TYPE_24__ {size_t request_length; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int NGX_HTTP_V2_DEFAULT_WEIGHT ; 
 scalar_t__ NGX_HTTP_V2_DEFAULT_WINDOW ; 
 int NGX_HTTP_V2_END_STREAM_FLAG ; 
 int /*<<< orphan*/  NGX_HTTP_V2_INTERNAL_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_V2_NO_ERROR ; 
 int NGX_HTTP_V2_PADDED_FLAG ; 
 int NGX_HTTP_V2_PRIORITY_FLAG ; 
 int /*<<< orphan*/  NGX_HTTP_V2_PROTOCOL_ERROR ; 
 int NGX_HTTP_V2_REFUSED_STREAM ; 
 int /*<<< orphan*/  NGX_HTTP_V2_SIZE_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC2 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC4 (TYPE_8__*,int,int) ; 
 int /*<<< orphan*/  ngx_http_v2_module ; 
 int FUNC5 (int*) ; 
 scalar_t__ FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_8__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,TYPE_7__*,int,int) ; 
 int* FUNC9 (TYPE_8__*,int*,int*) ; 
 int* FUNC10 (TYPE_8__*,int*,int*,int* (*) (TYPE_8__*,int*,int*)) ; 
 int* FUNC11 (TYPE_8__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u_char *
FUNC16(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    size_t                   size;
    ngx_uint_t               padded, priority, depend, dependency, excl, weight;
    ngx_uint_t               status;
    ngx_http_v2_node_t      *node;
    ngx_http_v2_stream_t    *stream;
    ngx_http_v2_srv_conf_t  *h2scf;

    padded = h2c->state.flags & NGX_HTTP_V2_PADDED_FLAG;
    priority = h2c->state.flags & NGX_HTTP_V2_PRIORITY_FLAG;

    size = 0;

    if (padded) {
        size++;
    }

    if (priority) {
        size += sizeof(uint32_t) + 1;
    }

    if (h2c->state.length < size) {
        FUNC14(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent HEADERS frame with incorrect length %uz",
                      h2c->state.length);

        return FUNC2(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    if (h2c->state.length == size) {
        FUNC14(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent HEADERS frame with empty header block");

        return FUNC2(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    if (h2c->goaway) {
        FUNC12(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                       "skipping http2 HEADERS frame");
        return FUNC11(h2c, pos, end);
    }

    if ((size_t) (end - pos) < size) {
        return FUNC10(h2c, pos, end,
                                      ngx_http_v2_state_headers);
    }

    h2c->state.length -= size;

    if (padded) {
        h2c->state.padding = *pos++;

        if (h2c->state.padding > h2c->state.length) {
            FUNC14(NGX_LOG_INFO, h2c->connection->log, 0,
                          "client sent padded HEADERS frame "
                          "with incorrect length: %uz, padding: %uz",
                          h2c->state.length, h2c->state.padding);

            return FUNC2(h2c,
                                                NGX_HTTP_V2_PROTOCOL_ERROR);
        }

        h2c->state.length -= h2c->state.padding;
    }

    depend = 0;
    excl = 0;
    weight = NGX_HTTP_V2_DEFAULT_WEIGHT;

    if (priority) {
        dependency = FUNC5(pos);

        depend = dependency & 0x7fffffff;
        excl = dependency >> 31;
        weight = pos[4] + 1;

        pos += sizeof(uint32_t) + 1;
    }

    FUNC13(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 HEADERS frame sid:%ui "
                   "depends on %ui excl:%ui weight:%ui",
                   h2c->state.sid, depend, excl, weight);

    if (h2c->state.sid % 2 == 0 || h2c->state.sid <= h2c->last_sid) {
        FUNC14(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent HEADERS frame with incorrect identifier "
                      "%ui, the last was %ui", h2c->state.sid, h2c->last_sid);

        return FUNC2(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    if (depend == h2c->state.sid) {
        FUNC14(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent HEADERS frame for stream %ui "
                      "with incorrect dependency", h2c->state.sid);

        return FUNC2(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    h2c->last_sid = h2c->state.sid;

    h2c->state.pool = FUNC0(1024, h2c->connection->log);
    if (h2c->state.pool == NULL) {
        return FUNC2(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
    }

    h2scf = FUNC1(h2c->http_connection->conf_ctx,
                                         ngx_http_v2_module);

    h2c->state.header_limit = h2scf->max_header_size;

    if (h2c->processing >= h2scf->concurrent_streams) {
        FUNC14(NGX_LOG_INFO, h2c->connection->log, 0,
                      "concurrent streams exceeded %ui", h2c->processing);

        status = NGX_HTTP_V2_REFUSED_STREAM;
        goto rst_stream;
    }

    if (!h2c->settings_ack
        && !(h2c->state.flags & NGX_HTTP_V2_END_STREAM_FLAG)
        && h2scf->preread_size < NGX_HTTP_V2_DEFAULT_WINDOW)
    {
        FUNC14(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent stream with data "
                      "before settings were acknowledged");

        status = NGX_HTTP_V2_REFUSED_STREAM;
        goto rst_stream;
    }

    node = FUNC4(h2c, h2c->state.sid, 1);

    if (node == NULL) {
        return FUNC2(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
    }

    if (node->parent) {
        FUNC15(&node->reuse);
        h2c->closed_nodes--;
    }

    stream = FUNC3(h2c, 0);
    if (stream == NULL) {
        return FUNC2(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
    }

    h2c->state.stream = stream;

    stream->pool = h2c->state.pool;
    h2c->state.keep_pool = 1;

    stream->request->request_length = h2c->state.length;

    stream->in_closed = h2c->state.flags & NGX_HTTP_V2_END_STREAM_FLAG;
    stream->node = node;

    node->stream = stream;

    if (priority || node->parent == NULL) {
        node->weight = weight;
        FUNC8(h2c, node, depend, excl);
    }

    if (h2c->connection->requests >= h2scf->max_requests) {
        h2c->goaway = 1;

        if (FUNC6(h2c, NGX_HTTP_V2_NO_ERROR) == NGX_ERROR) {
            return FUNC2(h2c,
                                                NGX_HTTP_V2_INTERNAL_ERROR);
        }
    }

    return FUNC9(h2c, pos, end);

rst_stream:

    if (FUNC7(h2c, h2c->state.sid, status) != NGX_OK) {
        return FUNC2(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
    }

    return FUNC9(h2c, pos, end);
}