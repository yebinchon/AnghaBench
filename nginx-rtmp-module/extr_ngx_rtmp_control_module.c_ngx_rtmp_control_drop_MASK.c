#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_22__ {int len; } ;
typedef  TYPE_4__ ngx_str_t ;
struct TYPE_19__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_23__ {int /*<<< orphan*/  count; int /*<<< orphan*/  filter; TYPE_1__ method; } ;
typedef  TYPE_5__ ngx_rtmp_control_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_21__ {size_t content_length_n; int /*<<< orphan*/  status; } ;
struct TYPE_24__ {int /*<<< orphan*/  pool; TYPE_3__ headers_out; TYPE_2__* connection; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_25__ {TYPE_8__* buf; } ;
typedef  TYPE_7__ ngx_chain_t ;
struct TYPE_26__ {int temporary; int last_buf; int /*<<< orphan*/ * last; int /*<<< orphan*/ * end; int /*<<< orphan*/ * pos; int /*<<< orphan*/ * start; } ;
typedef  TYPE_8__ ngx_buf_t ;
typedef  int /*<<< orphan*/  cl ;
struct TYPE_20__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 char const* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_OK ; 
 size_t NGX_INT_T_LEN ; 
 int /*<<< orphan*/  NGX_RTMP_CONTROL_FILTER_CLIENT ; 
 int /*<<< orphan*/  NGX_RTMP_CONTROL_FILTER_PUBLISHER ; 
 int /*<<< orphan*/  NGX_RTMP_CONTROL_FILTER_SUBSCRIBER ; 
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  ngx_rtmp_control_drop_handler ; 
 int /*<<< orphan*/  ngx_rtmp_control_module ; 
 char* FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,size_t,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_http_request_t *r, ngx_str_t *method)
{
    size_t                   len;
    u_char                  *p;
    ngx_buf_t               *b;
    ngx_chain_t              cl;
    const char              *msg;
    ngx_rtmp_control_ctx_t  *ctx;

    ctx = FUNC1(r, ngx_rtmp_control_module);

    if (ctx->method.len == sizeof("publisher") - 1 &&
        FUNC4(ctx->method.data, "publisher", ctx->method.len) == 0)
    {
        ctx->filter = NGX_RTMP_CONTROL_FILTER_PUBLISHER;

    } else if (ctx->method.len == sizeof("subscriber") - 1 &&
               FUNC4(ctx->method.data, "subscriber", ctx->method.len)
               == 0)
    {
        ctx->filter = NGX_RTMP_CONTROL_FILTER_SUBSCRIBER;

    } else if (method->len == sizeof("client") - 1 &&
               FUNC4(ctx->method.data, "client", ctx->method.len) == 0)
    {
        ctx->filter = NGX_RTMP_CONTROL_FILTER_CLIENT;

    } else {
        msg = "Undefined filter";
        goto error;
    }

    msg = FUNC7(r, ngx_rtmp_control_drop_handler);
    if (msg != NGX_CONF_OK) {
        goto error;
    }

    /* output count */

    len = NGX_INT_T_LEN;

    p = FUNC6(r->connection->pool, len);
    if (p == NULL) {
        return NGX_ERROR;
    }

    len = (size_t) (FUNC8(p, len, "%ui", ctx->count) - p);

    r->headers_out.status = NGX_HTTP_OK;
    r->headers_out.content_length_n = len;

    b = FUNC0(r->pool);
    if (b == NULL) {
        goto error;
    }

    b->start = b->pos = p;
    b->end = b->last = p + len;
    b->temporary = 1;
    b->last_buf = 1;

    FUNC5(&cl, sizeof(cl));
    cl.buf = b;

    FUNC3(r);

    return FUNC2(r, &cl);

error:
    return NGX_HTTP_INTERNAL_SERVER_ERROR;
}