#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_table_elt_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_21__ {int /*<<< orphan*/  last_modified; int /*<<< orphan*/  value_len; int /*<<< orphan*/  types; int /*<<< orphan*/  enable; } ;
typedef  TYPE_3__ ngx_http_ssi_loc_conf_t ;
struct TYPE_20__ {int size; int /*<<< orphan*/  pool; int /*<<< orphan*/  nalloc; int /*<<< orphan*/  elts; } ;
struct TYPE_22__ {int output; int /*<<< orphan*/  errmsg; int /*<<< orphan*/  timefmt; TYPE_2__ params; int /*<<< orphan*/  params_array; int /*<<< orphan*/  encoding; int /*<<< orphan*/  out; int /*<<< orphan*/ * last_out; int /*<<< orphan*/  value_len; } ;
typedef  TYPE_4__ ngx_http_ssi_ctx_t ;
struct TYPE_19__ {scalar_t__ content_length_n; } ;
struct TYPE_23__ {int filter_need_in_memory; int preserve_body; struct TYPE_23__* main; int /*<<< orphan*/  pool; TYPE_1__ headers_out; } ;
typedef  TYPE_5__ ngx_http_request_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_SSI_ENTITY_ENCODING ; 
 int /*<<< orphan*/  NGX_HTTP_SSI_PARAMS_N ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_3__* FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_ssi_filter_module ; 
 int /*<<< orphan*/  ngx_http_ssi_timefmt ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC11(ngx_http_request_t *r)
{
    ngx_http_ssi_ctx_t       *ctx;
    ngx_http_ssi_loc_conf_t  *slcf;

    slcf = FUNC4(r, ngx_http_ssi_filter_module);

    if (!slcf->enable
        || r->headers_out.content_length_n == 0
        || FUNC7(r, &slcf->types) == NULL)
    {
        return FUNC5(r);
    }

    ctx = FUNC9(r->pool, sizeof(ngx_http_ssi_ctx_t));
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC6(r, ctx, ngx_http_ssi_filter_module);


    ctx->value_len = slcf->value_len;
    ctx->last_out = &ctx->out;

    ctx->encoding = NGX_HTTP_SSI_ENTITY_ENCODING;
    ctx->output = 1;

    ctx->params.elts = ctx->params_array;
    ctx->params.size = sizeof(ngx_table_elt_t);
    ctx->params.nalloc = NGX_HTTP_SSI_PARAMS_N;
    ctx->params.pool = r->pool;

    ctx->timefmt = ngx_http_ssi_timefmt;
    FUNC10(&ctx->errmsg,
                "[an error occurred while processing the directive]");

    r->filter_need_in_memory = 1;

    if (r == r->main) {
        FUNC1(r);
        FUNC0(r);

        r->preserve_body = 1;

        if (!slcf->last_modified) {
            FUNC3(r);
            FUNC2(r);

        } else {
            FUNC8(r);
        }
    }

    return FUNC5(r);
}