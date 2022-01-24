#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_table_elt_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_27__ {int /*<<< orphan*/ * www_authenticate; int /*<<< orphan*/  headers; } ;
struct TYPE_29__ {int header_only; int /*<<< orphan*/ * request_body; int /*<<< orphan*/  pool; TYPE_4__* connection; TYPE_3__ headers_out; TYPE_2__* upstream; } ;
typedef  TYPE_5__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_http_request_body_t ;
struct TYPE_30__ {TYPE_7__* data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_6__ ngx_http_post_subrequest_t ;
struct TYPE_31__ {scalar_t__ status; TYPE_5__* subrequest; int /*<<< orphan*/  done; } ;
typedef  TYPE_7__ ngx_http_auth_request_ctx_t ;
struct TYPE_24__ {scalar_t__ len; } ;
struct TYPE_32__ {TYPE_11__ uri; } ;
typedef  TYPE_8__ ngx_http_auth_request_conf_t ;
struct TYPE_28__ {int /*<<< orphan*/  log; } ;
struct TYPE_25__ {int /*<<< orphan*/ * www_authenticate; } ;
struct TYPE_26__ {TYPE_1__ headers_in; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_FORBIDDEN ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_OK ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_HTTP_SUBREQUEST_WAITED ; 
 scalar_t__ NGX_HTTP_UNAUTHORIZED ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  ngx_http_auth_request_done ; 
 int /*<<< orphan*/  ngx_http_auth_request_module ; 
 scalar_t__ FUNC0 (TYPE_5__*,TYPE_8__*,TYPE_7__*) ; 
 TYPE_7__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_5__*,TYPE_11__*,int /*<<< orphan*/ *,TYPE_5__**,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_6__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_http_request_t *r)
{
    ngx_table_elt_t               *h, *ho;
    ngx_http_request_t            *sr;
    ngx_http_post_subrequest_t    *ps;
    ngx_http_auth_request_ctx_t   *ctx;
    ngx_http_auth_request_conf_t  *arcf;

    arcf = FUNC2(r, ngx_http_auth_request_module);

    if (arcf->uri.len == 0) {
        return NGX_DECLINED;
    }

    FUNC6(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "auth request handler");

    ctx = FUNC1(r, ngx_http_auth_request_module);

    if (ctx != NULL) {
        if (!ctx->done) {
            return NGX_AGAIN;
        }

        /*
         * as soon as we are done - explicitly set variables to make
         * sure they will be available after internal redirects
         */

        if (FUNC0(r, arcf, ctx) != NGX_OK) {
            return NGX_ERROR;
        }

        /* return appropriate status */

        if (ctx->status == NGX_HTTP_FORBIDDEN) {
            return ctx->status;
        }

        if (ctx->status == NGX_HTTP_UNAUTHORIZED) {
            sr = ctx->subrequest;

            h = sr->headers_out.www_authenticate;

            if (!h && sr->upstream) {
                h = sr->upstream->headers_in.www_authenticate;
            }

            if (h) {
                ho = FUNC5(&r->headers_out.headers);
                if (ho == NULL) {
                    return NGX_ERROR;
                }

                *ho = *h;

                r->headers_out.www_authenticate = ho;
            }

            return ctx->status;
        }

        if (ctx->status >= NGX_HTTP_OK
            && ctx->status < NGX_HTTP_SPECIAL_RESPONSE)
        {
            return NGX_OK;
        }

        FUNC7(NGX_LOG_ERR, r->connection->log, 0,
                      "auth request unexpected status: %ui", ctx->status);

        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ctx = FUNC9(r->pool, sizeof(ngx_http_auth_request_ctx_t));
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    ps = FUNC8(r->pool, sizeof(ngx_http_post_subrequest_t));
    if (ps == NULL) {
        return NGX_ERROR;
    }

    ps->handler = ngx_http_auth_request_done;
    ps->data = ctx;

    if (FUNC4(r, &arcf->uri, NULL, &sr, ps,
                            NGX_HTTP_SUBREQUEST_WAITED)
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    /*
     * allocate fake request body to avoid attempts to read it and to make
     * sure real body file (if already read) won't be closed by upstream
     */

    sr->request_body = FUNC9(r->pool, sizeof(ngx_http_request_body_t));
    if (sr->request_body == NULL) {
        return NGX_ERROR;
    }

    sr->header_only = 1;

    ctx->subrequest = sr;

    FUNC3(r, ctx, ngx_http_auth_request_module);

    return NGX_AGAIN;
}