
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {TYPE_1__** modules; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_5__ {scalar_t__ (* init_module ) (TYPE_2__*) ;} ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ stub1 (TYPE_2__*) ;

ngx_int_t
ngx_init_modules(ngx_cycle_t *cycle)
{
    ngx_uint_t i;

    for (i = 0; cycle->modules[i]; i++) {
        if (cycle->modules[i]->init_module) {
            if (cycle->modules[i]->init_module(cycle) != NGX_OK) {
                return NGX_ERROR;
            }
        }
    }

    return NGX_OK;
}
