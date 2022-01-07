
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
typedef size_t ngx_uint_t ;
struct TYPE_4__ {scalar_t__ status; int valid; } ;
typedef TYPE_1__ ngx_http_cache_valid_t ;
struct TYPE_5__ {size_t nelts; TYPE_1__* elts; } ;
typedef TYPE_2__ ngx_array_t ;



time_t
ngx_http_file_cache_valid(ngx_array_t *cache_valid, ngx_uint_t status)
{
    ngx_uint_t i;
    ngx_http_cache_valid_t *valid;

    if (cache_valid == ((void*)0)) {
        return 0;
    }

    valid = cache_valid->elts;
    for (i = 0; i < cache_valid->nelts; i++) {

        if (valid[i].status == 0) {
            return valid[i].valid;
        }

        if (valid[i].status == status) {
            return valid[i].valid;
        }
    }

    return 0;
}
