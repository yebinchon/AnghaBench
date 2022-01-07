
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {int headers; } ;
struct TYPE_8__ {TYPE_1__ headers_out; int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_9__ {int * elts; } ;
typedef TYPE_3__ ngx_array_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_3__*,int ,int,int) ;
 int ** ngx_array_push (TYPE_3__*) ;
 int * ngx_list_push (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_copy_multi_header_lines(ngx_http_request_t *r,
    ngx_table_elt_t *h, ngx_uint_t offset)
{
    ngx_array_t *pa;
    ngx_table_elt_t *ho, **ph;

    pa = (ngx_array_t *) ((char *) &r->headers_out + offset);

    if (pa->elts == ((void*)0)) {
        if (ngx_array_init(pa, r->pool, 2, sizeof(ngx_table_elt_t *)) != NGX_OK)
        {
            return NGX_ERROR;
        }
    }

    ho = ngx_list_push(&r->headers_out.headers);
    if (ho == ((void*)0)) {
        return NGX_ERROR;
    }

    *ho = *h;

    ph = ngx_array_push(pa);
    if (ph == ((void*)0)) {
        return NGX_ERROR;
    }

    *ph = ho;

    return NGX_OK;
}
