
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int data; int len; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int data; int len; } ;
struct TYPE_12__ {TYPE_1__ value; } ;
typedef TYPE_4__ ngx_http_v2_header_t ;
struct TYPE_13__ {TYPE_2__* stream; int pool; } ;
typedef TYPE_5__ ngx_http_request_t ;
typedef int ngx_array_t ;
struct TYPE_10__ {int * cookies; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_array_create (int ,int,int) ;
 TYPE_3__* ngx_array_push (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_cookie(ngx_http_request_t *r, ngx_http_v2_header_t *header)
{
    ngx_str_t *val;
    ngx_array_t *cookies;

    cookies = r->stream->cookies;

    if (cookies == ((void*)0)) {
        cookies = ngx_array_create(r->pool, 2, sizeof(ngx_str_t));
        if (cookies == ((void*)0)) {
            return NGX_ERROR;
        }

        r->stream->cookies = cookies;
    }

    val = ngx_array_push(cookies);
    if (val == ((void*)0)) {
        return NGX_ERROR;
    }

    val->len = header->value.len;
    val->data = header->value.data;

    return NGX_OK;
}
