
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_21__ {int last_modified; int value_len; int types; int enable; } ;
typedef TYPE_3__ ngx_http_ssi_loc_conf_t ;
struct TYPE_20__ {int size; int pool; int nalloc; int elts; } ;
struct TYPE_22__ {int output; int errmsg; int timefmt; TYPE_2__ params; int params_array; int encoding; int out; int * last_out; int value_len; } ;
typedef TYPE_4__ ngx_http_ssi_ctx_t ;
struct TYPE_19__ {scalar_t__ content_length_n; } ;
struct TYPE_23__ {int filter_need_in_memory; int preserve_body; struct TYPE_23__* main; int pool; TYPE_1__ headers_out; } ;
typedef TYPE_5__ ngx_http_request_t ;


 int NGX_ERROR ;
 int NGX_HTTP_SSI_ENTITY_ENCODING ;
 int NGX_HTTP_SSI_PARAMS_N ;
 int ngx_http_clear_accept_ranges (TYPE_5__*) ;
 int ngx_http_clear_content_length (TYPE_5__*) ;
 int ngx_http_clear_etag (TYPE_5__*) ;
 int ngx_http_clear_last_modified (TYPE_5__*) ;
 TYPE_3__* ngx_http_get_module_loc_conf (TYPE_5__*,int ) ;
 int ngx_http_next_header_filter (TYPE_5__*) ;
 int ngx_http_set_ctx (TYPE_5__*,TYPE_4__*,int ) ;
 int ngx_http_ssi_filter_module ;
 int ngx_http_ssi_timefmt ;
 int * ngx_http_test_content_type (TYPE_5__*,int *) ;
 int ngx_http_weak_etag (TYPE_5__*) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_ssi_header_filter(ngx_http_request_t *r)
{
    ngx_http_ssi_ctx_t *ctx;
    ngx_http_ssi_loc_conf_t *slcf;

    slcf = ngx_http_get_module_loc_conf(r, ngx_http_ssi_filter_module);

    if (!slcf->enable
        || r->headers_out.content_length_n == 0
        || ngx_http_test_content_type(r, &slcf->types) == ((void*)0))
    {
        return ngx_http_next_header_filter(r);
    }

    ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_ssi_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_http_set_ctx(r, ctx, ngx_http_ssi_filter_module);


    ctx->value_len = slcf->value_len;
    ctx->last_out = &ctx->out;

    ctx->encoding = NGX_HTTP_SSI_ENTITY_ENCODING;
    ctx->output = 1;

    ctx->params.elts = ctx->params_array;
    ctx->params.size = sizeof(ngx_table_elt_t);
    ctx->params.nalloc = NGX_HTTP_SSI_PARAMS_N;
    ctx->params.pool = r->pool;

    ctx->timefmt = ngx_http_ssi_timefmt;
    ngx_str_set(&ctx->errmsg,
                "[an error occurred while processing the directive]");

    r->filter_need_in_memory = 1;

    if (r == r->main) {
        ngx_http_clear_content_length(r);
        ngx_http_clear_accept_ranges(r);

        r->preserve_body = 1;

        if (!slcf->last_modified) {
            ngx_http_clear_last_modified(r);
            ngx_http_clear_etag(r);

        } else {
            ngx_http_weak_etag(r);
        }
    }

    return ngx_http_next_header_filter(r);
}
