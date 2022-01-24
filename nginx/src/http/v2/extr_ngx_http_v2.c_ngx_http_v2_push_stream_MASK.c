#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_9__ ;
typedef  struct TYPE_45__   TYPE_8__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;
typedef  struct TYPE_37__   TYPE_14__ ;
typedef  struct TYPE_36__   TYPE_12__ ;
typedef  struct TYPE_35__   TYPE_11__ ;
typedef  struct TYPE_34__   TYPE_10__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_40__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_42__ {TYPE_3__ value; } ;
typedef  TYPE_5__ ngx_table_elt_t ;
struct TYPE_43__ {char* data; size_t len; } ;
typedef  TYPE_6__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_44__ {int in_closed; TYPE_11__* request; TYPE_9__* node; int /*<<< orphan*/ * pool; TYPE_10__* connection; } ;
typedef  TYPE_7__ ngx_http_v2_stream_t ;
typedef  int /*<<< orphan*/  ngx_http_v2_srv_conf_t ;
struct TYPE_39__ {scalar_t__ len; } ;
struct TYPE_45__ {int offset; TYPE_2__ name; } ;
typedef  TYPE_8__ ngx_http_v2_parse_header_t ;
struct TYPE_46__ {int /*<<< orphan*/  id; int /*<<< orphan*/  weight; TYPE_7__* stream; int /*<<< orphan*/  reuse; int /*<<< orphan*/ * parent; int /*<<< orphan*/  index; } ;
typedef  TYPE_9__ ngx_http_v2_node_t ;
struct TYPE_34__ {TYPE_4__* connection; int /*<<< orphan*/  last_push; int /*<<< orphan*/  closed_nodes; int /*<<< orphan*/  closed; int /*<<< orphan*/ * streams_index; TYPE_1__* http_connection; } ;
typedef  TYPE_10__ ngx_http_v2_connection_t ;
struct TYPE_35__ {int /*<<< orphan*/  headers_in; TYPE_6__ schema; int /*<<< orphan*/  method; int /*<<< orphan*/  method_name; TYPE_12__* connection; } ;
typedef  TYPE_11__ ngx_http_request_t ;
struct TYPE_36__ {TYPE_14__* write; } ;
typedef  TYPE_12__ ngx_connection_t ;
struct TYPE_41__ {int error; int /*<<< orphan*/  log; } ;
struct TYPE_38__ {int /*<<< orphan*/  conf_ctx; } ;
struct TYPE_37__ {int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 scalar_t__ NGX_ABORT ; 
 scalar_t__ NGX_DECLINED ; 
 int /*<<< orphan*/  NGX_HTTP_BAD_REQUEST ; 
 int /*<<< orphan*/  NGX_HTTP_GET ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_V2_DEFAULT_WEIGHT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_core_get_method ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC6 (TYPE_10__*,int) ; 
 TYPE_9__* FUNC7 (TYPE_10__*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_v2_module ; 
 scalar_t__ FUNC9 (TYPE_11__*,TYPE_8__*,TYPE_6__*) ; 
 TYPE_8__* ngx_http_v2_parse_headers ; 
 scalar_t__ FUNC10 (TYPE_11__*,TYPE_6__*) ; 
 int /*<<< orphan*/  ngx_http_v2_run_request_handler ; 
 scalar_t__ FUNC11 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_10__*,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_14__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_posted_events ; 
 void* FUNC17 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

ngx_http_v2_stream_t *
FUNC20(ngx_http_v2_stream_t *parent, ngx_str_t *path)
{
    ngx_int_t                     rc;
    ngx_str_t                     value;
    ngx_pool_t                   *pool;
    ngx_uint_t                    index;
    ngx_table_elt_t             **h;
    ngx_connection_t             *fc;
    ngx_http_request_t           *r;
    ngx_http_v2_node_t           *node;
    ngx_http_v2_stream_t         *stream;
    ngx_http_v2_srv_conf_t       *h2scf;
    ngx_http_v2_connection_t     *h2c;
    ngx_http_v2_parse_header_t   *header;

    h2c = parent->connection;

    pool = FUNC0(1024, h2c->connection->log);
    if (pool == NULL) {
        goto rst_stream;
    }

    node = FUNC7(h2c, h2c->last_push, 1);

    if (node == NULL) {
        FUNC1(pool);
        goto rst_stream;
    }

    stream = FUNC6(h2c, 1);
    if (stream == NULL) {

        if (node->parent == NULL) {
            h2scf = FUNC3(h2c->http_connection->conf_ctx,
                                                 ngx_http_v2_module);

            index = FUNC8(h2scf, h2c->last_push);
            h2c->streams_index[index] = node->index;

            FUNC18(&h2c->closed, &node->reuse);
            h2c->closed_nodes++;
        }

        FUNC1(pool);
        goto rst_stream;
    }

    if (node->parent) {
        FUNC19(&node->reuse);
        h2c->closed_nodes--;
    }

    stream->pool = pool;

    r = stream->request;
    fc = r->connection;

    stream->in_closed = 1;
    stream->node = node;

    node->stream = stream;

    FUNC13(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 push stream sid:%ui "
                   "depends on %ui excl:0 weight:16",
                   h2c->last_push, parent->node->id);

    node->weight = NGX_HTTP_V2_DEFAULT_WEIGHT;
    FUNC12(h2c, node, parent->node->id, 0);

    r->method_name = ngx_http_core_get_method;
    r->method = NGX_HTTP_GET;

    r->schema.data = FUNC17(pool, &parent->request->schema);
    if (r->schema.data == NULL) {
        goto close;
    }

    r->schema.len = parent->request->schema.len;

    value.data = FUNC17(pool, path);
    if (value.data == NULL) {
        goto close;
    }

    value.len = path->len;

    rc = FUNC10(r, &value);

    if (rc != NGX_OK) {
        goto error;
    }

    for (header = ngx_http_v2_parse_headers; header->name.len; header++) {
        h = (ngx_table_elt_t **)
                ((char *) &parent->request->headers_in + header->offset);

        if (*h == NULL) {
            continue;
        }

        value.len = (*h)->value.len;

        value.data = FUNC15(pool, value.len + 1);
        if (value.data == NULL) {
            goto close;
        }

        FUNC14(value.data, (*h)->value.data, value.len);
        value.data[value.len] = '\0';

        rc = FUNC9(r, header, &value);

        if (rc != NGX_OK) {
            goto error;
        }
    }

    fc->write->handler = ngx_http_v2_run_request_handler;
    FUNC16(fc->write, &ngx_posted_events);

    return stream;

error:

    if (rc == NGX_ABORT) {
        /* header handler has already finalized request */
        FUNC4(fc);
        return NULL;
    }

    if (rc == NGX_DECLINED) {
        FUNC2(r, NGX_HTTP_BAD_REQUEST);
        FUNC4(fc);
        return NULL;
    }

close:

    FUNC5(stream, NGX_HTTP_INTERNAL_SERVER_ERROR);

    return NULL;

rst_stream:

    if (FUNC11(h2c, h2c->last_push,
                                    NGX_HTTP_INTERNAL_SERVER_ERROR)
        != NGX_OK)
    {
        h2c->connection->error = 1;
    }

    return NULL;
}