
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_16__ ;


typedef int off_t ;
struct TYPE_23__ {int offset; } ;
typedef TYPE_4__ ngx_temp_file_t ;
struct TYPE_22__ {scalar_t__ connection; } ;
struct TYPE_20__ {scalar_t__ status_n; int content_length_n; } ;
struct TYPE_24__ {TYPE_3__ peer; scalar_t__ store; scalar_t__ cacheable; TYPE_1__ headers_in; TYPE_7__* pipe; } ;
typedef TYPE_5__ ngx_http_upstream_t ;
struct TYPE_25__ {TYPE_2__* connection; TYPE_16__* cache; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_26__ {int length; scalar_t__ downstream_error; scalar_t__ upstream_eof; scalar_t__ upstream_done; int out; scalar_t__ upstream_error; TYPE_4__* temp_file; scalar_t__ writing; int aio; } ;
typedef TYPE_7__ ngx_event_pipe_t ;
struct TYPE_21__ {int log; } ;
struct TYPE_19__ {scalar_t__ body_start; } ;


 scalar_t__ NGX_ABORT ;
 int NGX_ERROR ;
 int NGX_HTTP_BAD_GATEWAY ;
 scalar_t__ NGX_HTTP_OK ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ ngx_event_pipe (TYPE_7__*,int) ;
 int ngx_http_file_cache_free (TYPE_16__*,TYPE_4__*) ;
 int ngx_http_file_cache_update (TYPE_6__*,TYPE_4__*) ;
 int ngx_http_upstream_finalize_request (TYPE_6__*,TYPE_5__*,int ) ;
 int ngx_http_upstream_store (TYPE_6__*,TYPE_5__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_upstream_process_request(ngx_http_request_t *r,
    ngx_http_upstream_t *u)
{
    ngx_temp_file_t *tf;
    ngx_event_pipe_t *p;

    p = u->pipe;
    if (u->peer.connection) {

        if (u->store) {

            if (p->upstream_eof || p->upstream_done) {

                tf = p->temp_file;

                if (u->headers_in.status_n == NGX_HTTP_OK
                    && (p->upstream_done || p->length == -1)
                    && (u->headers_in.content_length_n == -1
                        || u->headers_in.content_length_n == tf->offset))
                {
                    ngx_http_upstream_store(r, u);
                }
            }
        }
        if (p->upstream_done || p->upstream_eof || p->upstream_error) {
            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "http upstream exit: %p", p->out);

            if (p->upstream_done
                || (p->upstream_eof && p->length == -1))
            {
                ngx_http_upstream_finalize_request(r, u, 0);
                return;
            }

            if (p->upstream_eof) {
                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "upstream prematurely closed connection");
            }

            ngx_http_upstream_finalize_request(r, u, NGX_HTTP_BAD_GATEWAY);
            return;
        }
    }

    if (p->downstream_error) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http upstream downstream error");

        if (!u->cacheable && !u->store && u->peer.connection) {
            ngx_http_upstream_finalize_request(r, u, NGX_ERROR);
        }
    }
}
