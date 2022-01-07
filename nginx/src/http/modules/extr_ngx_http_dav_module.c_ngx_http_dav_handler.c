
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_15__ {int content_range; } ;
struct TYPE_14__ {char* data; int len; } ;
struct TYPE_17__ {int method; int request_body_in_file_only; int request_body_in_persistent_file; int request_body_in_clean_file; int request_body_file_group_access; int request_body_file_log_level; TYPE_3__* connection; TYPE_2__ headers_in; TYPE_1__ uri; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_18__ {int methods; } ;
typedef TYPE_5__ ngx_http_dav_loc_conf_t ;
struct TYPE_16__ {int log; } ;


 int NGX_DECLINED ;
 int NGX_DONE ;
 int NGX_HTTP_CONFLICT ;




 int NGX_HTTP_NOT_IMPLEMENTED ;

 int NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_ERR ;
 int ngx_http_dav_copy_move_handler (TYPE_4__*) ;
 int ngx_http_dav_delete_handler (TYPE_4__*) ;
 int ngx_http_dav_mkcol_handler (TYPE_4__*,TYPE_5__*) ;
 int ngx_http_dav_module ;
 int ngx_http_dav_put_handler ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 int ngx_http_read_client_request_body (TYPE_4__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_dav_handler(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_http_dav_loc_conf_t *dlcf;

    dlcf = ngx_http_get_module_loc_conf(r, ngx_http_dav_module);

    if (!(r->method & dlcf->methods)) {
        return NGX_DECLINED;
    }

    switch (r->method) {

    case 128:

        if (r->uri.data[r->uri.len - 1] == '/') {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "cannot PUT to a collection");
            return NGX_HTTP_CONFLICT;
        }

        if (r->headers_in.content_range) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "PUT with range is unsupported");
            return NGX_HTTP_NOT_IMPLEMENTED;
        }

        r->request_body_in_file_only = 1;
        r->request_body_in_persistent_file = 1;
        r->request_body_in_clean_file = 1;
        r->request_body_file_group_access = 1;
        r->request_body_file_log_level = 0;

        rc = ngx_http_read_client_request_body(r, ngx_http_dav_put_handler);

        if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
            return rc;
        }

        return NGX_DONE;

    case 131:

        return ngx_http_dav_delete_handler(r);

    case 130:

        return ngx_http_dav_mkcol_handler(r, dlcf);

    case 132:

        return ngx_http_dav_copy_move_handler(r);

    case 129:

        return ngx_http_dav_copy_move_handler(r);
    }

    return NGX_DECLINED;
}
