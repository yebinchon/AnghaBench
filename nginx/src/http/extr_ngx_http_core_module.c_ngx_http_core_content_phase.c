
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {char* data; int len; } ;
struct TYPE_16__ {scalar_t__ (* content_handler ) (TYPE_4__*) ;TYPE_2__* connection; TYPE_1__ uri; int phase_handler; int write_event_handler; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_17__ {scalar_t__ (* handler ) (TYPE_4__*) ;scalar_t__ checker; } ;
typedef TYPE_5__ ngx_http_phase_handler_t ;
struct TYPE_14__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_HTTP_FORBIDDEN ;
 scalar_t__ NGX_HTTP_NOT_FOUND ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_http_finalize_request (TYPE_4__*,scalar_t__) ;
 int * ngx_http_map_uri_to_path (TYPE_4__*,TYPE_3__*,size_t*,int ) ;
 int ngx_http_request_empty_handler ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 scalar_t__ stub1 (TYPE_4__*) ;
 scalar_t__ stub2 (TYPE_4__*) ;

ngx_int_t
ngx_http_core_content_phase(ngx_http_request_t *r,
    ngx_http_phase_handler_t *ph)
{
    size_t root;
    ngx_int_t rc;
    ngx_str_t path;

    if (r->content_handler) {
        r->write_event_handler = ngx_http_request_empty_handler;
        ngx_http_finalize_request(r, r->content_handler(r));
        return NGX_OK;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "content phase: %ui", r->phase_handler);

    rc = ph->handler(r);

    if (rc != NGX_DECLINED) {
        ngx_http_finalize_request(r, rc);
        return NGX_OK;
    }



    ph++;

    if (ph->checker) {
        r->phase_handler++;
        return NGX_AGAIN;
    }



    if (r->uri.data[r->uri.len - 1] == '/') {

        if (ngx_http_map_uri_to_path(r, &path, &root, 0) != ((void*)0)) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "directory index of \"%s\" is forbidden", path.data);
        }

        ngx_http_finalize_request(r, NGX_HTTP_FORBIDDEN);
        return NGX_OK;
    }

    ngx_log_error(NGX_LOG_ERR, r->connection->log, 0, "no handler found");

    ngx_http_finalize_request(r, NGX_HTTP_NOT_FOUND);
    return NGX_OK;
}
