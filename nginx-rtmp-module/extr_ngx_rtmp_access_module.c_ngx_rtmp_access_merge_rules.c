
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_5__ {scalar_t__ nelts; int size; int elts; } ;
typedef TYPE_1__ ngx_array_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 void* ngx_array_push_n (TYPE_1__*,scalar_t__) ;
 int ngx_memcpy (void*,int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_access_merge_rules(ngx_array_t *prev, ngx_array_t *rules)
{
    void *p;

    if (prev->nelts == 0) {
        return NGX_OK;
    }

    if (rules->nelts == 0) {
        *rules = *prev;
        return NGX_OK;
    }

    p = ngx_array_push_n(rules, prev->nelts);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(p, prev->elts, prev->size * prev->nelts);

    return NGX_OK;
}
