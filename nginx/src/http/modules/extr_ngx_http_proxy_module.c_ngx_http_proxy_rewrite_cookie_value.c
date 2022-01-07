
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_9__ {size_t len; int * data; } ;
struct TYPE_10__ {TYPE_1__ value; } ;
typedef TYPE_2__ ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_11__ {scalar_t__ (* handler ) (int *,TYPE_2__*,size_t,size_t,TYPE_3__*) ;} ;
typedef TYPE_3__ ngx_http_proxy_rewrite_t ;
struct TYPE_12__ {size_t nelts; TYPE_3__* elts; } ;
typedef TYPE_4__ ngx_array_t ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ ngx_strchr (int *,char) ;
 scalar_t__ stub1 (int *,TYPE_2__*,size_t,size_t,TYPE_3__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_rewrite_cookie_value(ngx_http_request_t *r, ngx_table_elt_t *h,
    u_char *value, ngx_array_t *rewrites)
{
    size_t len, prefix;
    u_char *p;
    ngx_int_t rc;
    ngx_uint_t i;
    ngx_http_proxy_rewrite_t *pr;

    prefix = value - h->value.data;

    p = (u_char *) ngx_strchr(value, ';');

    len = p ? (size_t) (p - value) : (h->value.len - prefix);

    pr = rewrites->elts;

    for (i = 0; i < rewrites->nelts; i++) {
        rc = pr[i].handler(r, h, prefix, len, &pr[i]);

        if (rc != NGX_DECLINED) {
            return rc;
        }
    }

    return NGX_DECLINED;
}
