
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_rtmp_exec_conf_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {scalar_t__ nelts; int * elts; } ;
typedef TYPE_1__ ngx_array_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_array_push_n (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_exec_merge_confs(ngx_array_t *conf, ngx_array_t *prev)
{
    size_t n;
    ngx_rtmp_exec_conf_t *ec, *pec;

    if (prev->nelts == 0) {
        return NGX_OK;
    }

    if (conf->nelts == 0) {
        *conf = *prev;
        return NGX_OK;
    }

    ec = ngx_array_push_n(conf, prev->nelts);
    if (ec == ((void*)0)) {
        return NGX_ERROR;
    }

    pec = prev->elts;
    for (n = 0; n < prev->nelts; n++, ec++, pec++) {
        *ec = *pec;
    }

    return NGX_OK;
}
