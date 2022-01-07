
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_3__ {int hsize; int * dns_wc_tail_hash; int temp_pool; int * dns_wc_head_hash; int * keys_hash; int dns_wc_tail; int dns_wc_head; int keys; } ;
typedef TYPE_1__ ngx_hash_keys_arrays_t ;
typedef int ngx_hash_key_t ;
typedef int ngx_array_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HASH_LARGE_ASIZE ;
 int NGX_HASH_LARGE_HSIZE ;
 scalar_t__ NGX_HASH_SMALL ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (int *,int ,scalar_t__,int) ;
 void* ngx_pcalloc (int ,int) ;

ngx_int_t
ngx_hash_keys_array_init(ngx_hash_keys_arrays_t *ha, ngx_uint_t type)
{
    ngx_uint_t asize;

    if (type == NGX_HASH_SMALL) {
        asize = 4;
        ha->hsize = 107;

    } else {
        asize = NGX_HASH_LARGE_ASIZE;
        ha->hsize = NGX_HASH_LARGE_HSIZE;
    }

    if (ngx_array_init(&ha->keys, ha->temp_pool, asize, sizeof(ngx_hash_key_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_array_init(&ha->dns_wc_head, ha->temp_pool, asize,
                       sizeof(ngx_hash_key_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_array_init(&ha->dns_wc_tail, ha->temp_pool, asize,
                       sizeof(ngx_hash_key_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    ha->keys_hash = ngx_pcalloc(ha->temp_pool, sizeof(ngx_array_t) * ha->hsize);
    if (ha->keys_hash == ((void*)0)) {
        return NGX_ERROR;
    }

    ha->dns_wc_head_hash = ngx_pcalloc(ha->temp_pool,
                                       sizeof(ngx_array_t) * ha->hsize);
    if (ha->dns_wc_head_hash == ((void*)0)) {
        return NGX_ERROR;
    }

    ha->dns_wc_tail_hash = ngx_pcalloc(ha->temp_pool,
                                       sizeof(ngx_array_t) * ha->hsize);
    if (ha->dns_wc_tail_hash == ((void*)0)) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
