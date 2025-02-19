
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_15__ {int data; } ;
typedef TYPE_4__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {char* data; int len; } ;
struct TYPE_12__ {scalar_t__ content_length_n; } ;
struct TYPE_16__ {TYPE_3__* connection; TYPE_2__ uri; TYPE_1__ headers_in; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_17__ {int access; } ;
typedef TYPE_6__ ngx_http_dav_loc_conf_t ;
struct TYPE_14__ {int log; } ;


 scalar_t__ NGX_FILE_ERROR ;
 int NGX_HTTP_CONFLICT ;
 int NGX_HTTP_CREATED ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_UNSUPPORTED_MEDIA_TYPE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_create_dir (int ,int ) ;
 int ngx_create_dir_n ;
 int ngx_dir_access (int ) ;
 int ngx_errno ;
 int ngx_http_dav_error (int ,int ,int ,int ,int ) ;
 scalar_t__ ngx_http_dav_location (TYPE_5__*,int ) ;
 char* ngx_http_map_uri_to_path (TYPE_5__*,TYPE_4__*,size_t*,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_dav_mkcol_handler(ngx_http_request_t *r, ngx_http_dav_loc_conf_t *dlcf)
{
    u_char *p;
    size_t root;
    ngx_str_t path;

    if (r->headers_in.content_length_n > 0) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "MKCOL with body is unsupported");
        return NGX_HTTP_UNSUPPORTED_MEDIA_TYPE;
    }

    if (r->uri.data[r->uri.len - 1] != '/') {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "MKCOL can create a collection only");
        return NGX_HTTP_CONFLICT;
    }

    p = ngx_http_map_uri_to_path(r, &path, &root, 0);
    if (p == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    *(p - 1) = '\0';
    r->uri.len--;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http mkcol path: \"%s\"", path.data);

    if (ngx_create_dir(path.data, ngx_dir_access(dlcf->access))
        != NGX_FILE_ERROR)
    {
        if (ngx_http_dav_location(r, path.data) != NGX_OK) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        return NGX_HTTP_CREATED;
    }

    return ngx_http_dav_error(r->connection->log, ngx_errno,
                              NGX_HTTP_CONFLICT, ngx_create_dir_n, path.data);
}
