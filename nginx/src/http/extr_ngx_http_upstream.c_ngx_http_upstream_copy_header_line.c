
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_4__ {int headers; } ;
struct TYPE_5__ {TYPE_1__ headers_out; } ;
typedef TYPE_2__ ngx_http_request_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_list_push (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_copy_header_line(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    ngx_table_elt_t *ho, **ph;

    ho = ngx_list_push(&r->headers_out.headers);
    if (ho == ((void*)0)) {
        return NGX_ERROR;
    }

    *ho = *h;

    if (offset) {
        ph = (ngx_table_elt_t **) ((char *) &r->headers_out + offset);
        *ph = ho;
    }

    return NGX_OK;
}
