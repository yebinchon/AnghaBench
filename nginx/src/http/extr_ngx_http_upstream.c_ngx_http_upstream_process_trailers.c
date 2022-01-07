
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_16__ {int len; } ;
struct TYPE_18__ {TYPE_4__ key; int lowcase_key; int hash; } ;
typedef TYPE_6__ ngx_table_elt_t ;
struct TYPE_19__ {size_t nelts; TYPE_6__* elts; struct TYPE_19__* next; } ;
typedef TYPE_7__ ngx_list_part_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {TYPE_7__ part; } ;
struct TYPE_14__ {TYPE_1__ trailers; } ;
struct TYPE_20__ {TYPE_3__* conf; TYPE_2__ headers_in; } ;
typedef TYPE_8__ ngx_http_upstream_t ;
struct TYPE_17__ {int trailers; } ;
struct TYPE_21__ {TYPE_5__ headers_out; } ;
typedef TYPE_9__ ngx_http_request_t ;
struct TYPE_15__ {int hide_headers_hash; int pass_trailers; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 scalar_t__ ngx_hash_find (int *,int ,int ,int ) ;
 TYPE_6__* ngx_list_push (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_process_trailers(ngx_http_request_t *r,
    ngx_http_upstream_t *u)
{
    ngx_uint_t i;
    ngx_list_part_t *part;
    ngx_table_elt_t *h, *ho;

    if (!u->conf->pass_trailers) {
        return NGX_OK;
    }

    part = &u->headers_in.trailers.part;
    h = part->elts;

    for (i = 0; ; i++) {

        if (i >= part->nelts) {
            if (part->next == ((void*)0)) {
                break;
            }

            part = part->next;
            h = part->elts;
            i = 0;
        }

        if (ngx_hash_find(&u->conf->hide_headers_hash, h[i].hash,
                          h[i].lowcase_key, h[i].key.len))
        {
            continue;
        }

        ho = ngx_list_push(&r->headers_out.trailers);
        if (ho == ((void*)0)) {
            return NGX_ERROR;
        }

        *ho = h[i];
    }

    return NGX_OK;
}
