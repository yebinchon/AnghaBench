
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_10__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_11__ {TYPE_3__ value; } ;
typedef TYPE_4__ ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {TYPE_2__* upstream; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_8__ {int chunked; TYPE_4__* transfer_encoding; } ;
struct TYPE_9__ {TYPE_1__ headers_in; } ;


 int NGX_OK ;
 int * ngx_strlcasestrn (scalar_t__,scalar_t__,int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_process_transfer_encoding(ngx_http_request_t *r,
    ngx_table_elt_t *h, ngx_uint_t offset)
{
    r->upstream->headers_in.transfer_encoding = h;

    if (ngx_strlcasestrn(h->value.data, h->value.data + h->value.len,
                         (u_char *) "chunked", 7 - 1)
        != ((void*)0))
    {
        r->upstream->headers_in.chunked = 1;
    }

    return NGX_OK;
}
