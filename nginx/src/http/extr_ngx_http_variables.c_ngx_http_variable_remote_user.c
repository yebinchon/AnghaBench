
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {int not_found; int valid; int data; scalar_t__ no_cacheable; int len; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_8__ {int data; int len; } ;
struct TYPE_9__ {TYPE_1__ user; } ;
struct TYPE_11__ {TYPE_2__ headers_in; } ;
typedef TYPE_4__ ngx_http_request_t ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_auth_basic_user (TYPE_4__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_remote_user(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_int_t rc;

    rc = ngx_http_auth_basic_user(r);

    if (rc == NGX_DECLINED) {
        v->not_found = 1;
        return NGX_OK;
    }

    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    v->len = r->headers_in.user.len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->data = r->headers_in.user.data;

    return NGX_OK;
}
