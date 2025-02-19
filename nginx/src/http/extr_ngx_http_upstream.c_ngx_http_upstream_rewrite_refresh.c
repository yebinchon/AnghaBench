
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_17__ {int data; } ;
struct TYPE_15__ {TYPE_8__ value; } ;
typedef TYPE_4__ ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {TYPE_4__* refresh; int headers; } ;
struct TYPE_16__ {TYPE_3__ headers_out; TYPE_2__* connection; TYPE_1__* upstream; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_13__ {int log; } ;
struct TYPE_12__ {scalar_t__ (* rewrite_redirect ) (TYPE_5__*,TYPE_4__*,int *) ;} ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_4__* ngx_list_push (int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_8__*) ;
 int * ngx_strcasestrn (int,char*,int) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_4__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_rewrite_refresh(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    u_char *p;
    ngx_int_t rc;
    ngx_table_elt_t *ho;

    ho = ngx_list_push(&r->headers_out.headers);
    if (ho == ((void*)0)) {
        return NGX_ERROR;
    }

    *ho = *h;

    if (r->upstream->rewrite_redirect) {

        p = ngx_strcasestrn(ho->value.data, "url=", 4 - 1);

        if (p) {
            rc = r->upstream->rewrite_redirect(r, ho, p + 4 - ho->value.data);

        } else {
            return NGX_OK;
        }

        if (rc == NGX_DECLINED) {
            return NGX_OK;
        }

        if (rc == NGX_OK) {
            r->headers_out.refresh = ho;

            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "rewritten refresh: \"%V\"", &ho->value);
        }

        return rc;
    }

    r->headers_out.refresh = ho;

    return NGX_OK;
}
