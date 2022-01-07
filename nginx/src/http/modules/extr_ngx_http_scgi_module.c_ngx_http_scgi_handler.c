
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_19__ {scalar_t__ tag; } ;
struct TYPE_23__ {TYPE_2__* pipe; int buffering; int finalize_request; int abort_request; int process_header; int reinit_request; int create_request; int create_key; int * caches; TYPE_3__* conf; TYPE_1__ output; int schema; } ;
typedef TYPE_5__ ngx_http_upstream_t ;
typedef int ngx_http_status_t ;
struct TYPE_24__ {int caches; } ;
typedef TYPE_6__ ngx_http_scgi_main_conf_t ;
struct TYPE_21__ {scalar_t__ pass_request_body; int request_buffering; int buffering; } ;
struct TYPE_25__ {TYPE_3__ upstream; scalar_t__ scgi_lengths; } ;
typedef TYPE_7__ ngx_http_scgi_loc_conf_t ;
struct TYPE_22__ {int chunked; } ;
struct TYPE_26__ {int request_body_no_buffering; TYPE_4__ headers_in; int pool; scalar_t__ state; TYPE_5__* upstream; } ;
typedef TYPE_8__ ngx_http_request_t ;
typedef int ngx_event_pipe_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_20__ {TYPE_8__* input_ctx; int input_filter; } ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 scalar_t__ NGX_OK ;
 int ngx_event_pipe_copy_input_filter ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_8__*,int ) ;
 TYPE_6__* ngx_http_get_module_main_conf (TYPE_8__*,int ) ;
 scalar_t__ ngx_http_read_client_request_body (TYPE_8__*,int ) ;
 int ngx_http_scgi_abort_request ;
 int ngx_http_scgi_create_key ;
 int ngx_http_scgi_create_request ;
 scalar_t__ ngx_http_scgi_eval (TYPE_8__*,TYPE_7__*) ;
 int ngx_http_scgi_finalize_request ;
 int ngx_http_scgi_module ;
 int ngx_http_scgi_process_status_line ;
 int ngx_http_scgi_reinit_request ;
 int ngx_http_set_ctx (TYPE_8__*,int *,int ) ;
 scalar_t__ ngx_http_upstream_create (TYPE_8__*) ;
 int ngx_http_upstream_init ;
 void* ngx_pcalloc (int ,int) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_scgi_handler(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_http_status_t *status;
    ngx_http_upstream_t *u;
    ngx_http_scgi_loc_conf_t *scf;




    if (ngx_http_upstream_create(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    status = ngx_pcalloc(r->pool, sizeof(ngx_http_status_t));
    if (status == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ngx_http_set_ctx(r, status, ngx_http_scgi_module);

    scf = ngx_http_get_module_loc_conf(r, ngx_http_scgi_module);

    if (scf->scgi_lengths) {
        if (ngx_http_scgi_eval(r, scf) != NGX_OK) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }
    }

    u = r->upstream;

    ngx_str_set(&u->schema, "scgi://");
    u->output.tag = (ngx_buf_tag_t) &ngx_http_scgi_module;

    u->conf = &scf->upstream;
    u->create_request = ngx_http_scgi_create_request;
    u->reinit_request = ngx_http_scgi_reinit_request;
    u->process_header = ngx_http_scgi_process_status_line;
    u->abort_request = ngx_http_scgi_abort_request;
    u->finalize_request = ngx_http_scgi_finalize_request;
    r->state = 0;

    u->buffering = scf->upstream.buffering;

    u->pipe = ngx_pcalloc(r->pool, sizeof(ngx_event_pipe_t));
    if (u->pipe == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    u->pipe->input_filter = ngx_event_pipe_copy_input_filter;
    u->pipe->input_ctx = r;

    if (!scf->upstream.request_buffering
        && scf->upstream.pass_request_body
        && !r->headers_in.chunked)
    {
        r->request_body_no_buffering = 1;
    }

    rc = ngx_http_read_client_request_body(r, ngx_http_upstream_init);

    if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        return rc;
    }

    return NGX_DONE;
}
