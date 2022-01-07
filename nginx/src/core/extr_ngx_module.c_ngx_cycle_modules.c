
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_module_t ;
typedef int ngx_int_t ;
struct TYPE_3__ {int modules_n; int * modules; int pool; } ;
typedef TYPE_1__ ngx_cycle_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_max_module ;
 int ngx_memcpy (int *,int ,int) ;
 int ngx_modules ;
 int ngx_modules_n ;
 int * ngx_pcalloc (int ,int) ;

ngx_int_t
ngx_cycle_modules(ngx_cycle_t *cycle)
{





    cycle->modules = ngx_pcalloc(cycle->pool, (ngx_max_module + 1)
                                              * sizeof(ngx_module_t *));
    if (cycle->modules == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(cycle->modules, ngx_modules,
               ngx_modules_n * sizeof(ngx_module_t *));

    cycle->modules_n = ngx_modules_n;

    return NGX_OK;
}
