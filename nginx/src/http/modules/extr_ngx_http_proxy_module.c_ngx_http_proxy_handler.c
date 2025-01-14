
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_25__ {scalar_t__ tag; } ;
struct TYPE_29__ {int accel; TYPE_7__* input_filter_ctx; int input_filter; int input_filter_init; TYPE_3__* pipe; int buffering; int rewrite_cookie; int rewrite_redirect; int finalize_request; int abort_request; int process_header; int reinit_request; int create_request; int create_key; int * caches; TYPE_4__* conf; TYPE_2__ output; int ssl; int schema; } ;
typedef TYPE_6__ ngx_http_upstream_t ;
struct TYPE_28__ {int chunked; } ;
struct TYPE_30__ {int request_body_no_buffering; TYPE_5__ headers_in; int pool; scalar_t__ state; TYPE_6__* upstream; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_31__ {int caches; } ;
typedef TYPE_8__ ngx_http_proxy_main_conf_t ;
struct TYPE_27__ {scalar_t__ pass_request_body; int request_buffering; int buffering; int * ssl; } ;
struct TYPE_24__ {int schema; } ;
struct TYPE_32__ {scalar_t__ http_version; TYPE_4__ upstream; int * body_values; scalar_t__ cookie_paths; scalar_t__ cookie_domains; scalar_t__ redirects; TYPE_1__ vars; int * proxy_lengths; } ;
typedef TYPE_9__ ngx_http_proxy_loc_conf_t ;
struct TYPE_23__ {TYPE_1__ vars; } ;
typedef TYPE_10__ ngx_http_proxy_ctx_t ;
typedef int ngx_event_pipe_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_26__ {TYPE_7__* input_ctx; int input_filter; } ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 scalar_t__ NGX_HTTP_VERSION_11 ;
 scalar_t__ NGX_OK ;
 TYPE_9__* ngx_http_get_module_loc_conf (TYPE_7__*,int ) ;
 TYPE_8__* ngx_http_get_module_main_conf (TYPE_7__*,int ) ;
 int ngx_http_proxy_abort_request ;
 int ngx_http_proxy_copy_filter ;
 int ngx_http_proxy_create_key ;
 int ngx_http_proxy_create_request ;
 scalar_t__ ngx_http_proxy_eval (TYPE_7__*,TYPE_10__*,TYPE_9__*) ;
 int ngx_http_proxy_finalize_request ;
 int ngx_http_proxy_input_filter_init ;
 int ngx_http_proxy_module ;
 int ngx_http_proxy_non_buffered_copy_filter ;
 int ngx_http_proxy_process_status_line ;
 int ngx_http_proxy_reinit_request ;
 int ngx_http_proxy_rewrite_cookie ;
 int ngx_http_proxy_rewrite_redirect ;
 scalar_t__ ngx_http_read_client_request_body (TYPE_7__*,int ) ;
 int ngx_http_set_ctx (TYPE_7__*,TYPE_10__*,int ) ;
 scalar_t__ ngx_http_upstream_create (TYPE_7__*) ;
 int ngx_http_upstream_init ;
 void* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_handler(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_http_upstream_t *u;
    ngx_http_proxy_ctx_t *ctx;
    ngx_http_proxy_loc_conf_t *plcf;




    if (ngx_http_upstream_create(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_proxy_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ngx_http_set_ctx(r, ctx, ngx_http_proxy_module);

    plcf = ngx_http_get_module_loc_conf(r, ngx_http_proxy_module);

    u = r->upstream;

    if (plcf->proxy_lengths == ((void*)0)) {
        ctx->vars = plcf->vars;
        u->schema = plcf->vars.schema;




    } else {
        if (ngx_http_proxy_eval(r, ctx, plcf) != NGX_OK) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }
    }

    u->output.tag = (ngx_buf_tag_t) &ngx_http_proxy_module;

    u->conf = &plcf->upstream;
    u->create_request = ngx_http_proxy_create_request;
    u->reinit_request = ngx_http_proxy_reinit_request;
    u->process_header = ngx_http_proxy_process_status_line;
    u->abort_request = ngx_http_proxy_abort_request;
    u->finalize_request = ngx_http_proxy_finalize_request;
    r->state = 0;

    if (plcf->redirects) {
        u->rewrite_redirect = ngx_http_proxy_rewrite_redirect;
    }

    if (plcf->cookie_domains || plcf->cookie_paths) {
        u->rewrite_cookie = ngx_http_proxy_rewrite_cookie;
    }

    u->buffering = plcf->upstream.buffering;

    u->pipe = ngx_pcalloc(r->pool, sizeof(ngx_event_pipe_t));
    if (u->pipe == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    u->pipe->input_filter = ngx_http_proxy_copy_filter;
    u->pipe->input_ctx = r;

    u->input_filter_init = ngx_http_proxy_input_filter_init;
    u->input_filter = ngx_http_proxy_non_buffered_copy_filter;
    u->input_filter_ctx = r;

    u->accel = 1;

    if (!plcf->upstream.request_buffering
        && plcf->body_values == ((void*)0) && plcf->upstream.pass_request_body
        && (!r->headers_in.chunked
            || plcf->http_version == NGX_HTTP_VERSION_11))
    {
        r->request_body_no_buffering = 1;
    }

    rc = ngx_http_read_client_request_body(r, ngx_http_upstream_init);

    if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        return rc;
    }

    return NGX_DONE;
}
