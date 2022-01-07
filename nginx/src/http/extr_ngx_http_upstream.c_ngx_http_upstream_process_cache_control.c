
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef char u_char ;
typedef int ngx_uint_t ;
struct TYPE_16__ {char* data; int len; } ;
struct TYPE_18__ {TYPE_3__ value; } ;
typedef TYPE_5__ ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_21__ {int * elts; } ;
struct TYPE_15__ {int * x_accel_expires; TYPE_8__ cache_control; } ;
struct TYPE_19__ {scalar_t__ cacheable; TYPE_2__ headers_in; TYPE_1__* conf; } ;
typedef TYPE_6__ ngx_http_upstream_t ;
struct TYPE_20__ {TYPE_4__* cache; int pool; TYPE_6__* upstream; } ;
typedef TYPE_7__ ngx_http_request_t ;
typedef TYPE_8__ ngx_array_t ;
struct TYPE_17__ {scalar_t__ valid_sec; scalar_t__ error_sec; scalar_t__ updating_sec; } ;
struct TYPE_14__ {int ignore_headers; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_UPSTREAM_IGN_CACHE_CONTROL ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_8__*,int ,int,int) ;
 TYPE_5__** ngx_array_push (TYPE_8__*) ;
 char* ngx_strlcasestrn (char*,char*,char*,int) ;
 scalar_t__ ngx_time () ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_process_cache_control(ngx_http_request_t *r,
    ngx_table_elt_t *h, ngx_uint_t offset)
{
    ngx_array_t *pa;
    ngx_table_elt_t **ph;
    ngx_http_upstream_t *u;

    u = r->upstream;
    pa = &u->headers_in.cache_control;

    if (pa->elts == ((void*)0)) {
        if (ngx_array_init(pa, r->pool, 2, sizeof(ngx_table_elt_t *)) != NGX_OK)
        {
            return NGX_ERROR;
        }
    }

    ph = ngx_array_push(pa);
    if (ph == ((void*)0)) {
        return NGX_ERROR;
    }

    *ph = h;
    return NGX_OK;
}
