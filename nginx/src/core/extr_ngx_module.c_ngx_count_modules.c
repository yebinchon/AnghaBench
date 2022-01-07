
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_7__ {size_t type; scalar_t__ ctx_index; } ;
typedef TYPE_2__ ngx_module_t ;
typedef size_t ngx_int_t ;
struct TYPE_8__ {int modules_used; TYPE_1__* old_cycle; TYPE_2__** modules; } ;
typedef TYPE_3__ ngx_cycle_t ;
struct TYPE_6__ {TYPE_2__** modules; } ;


 scalar_t__ NGX_MODULE_UNSET_INDEX ;
 size_t ngx_module_ctx_index (TYPE_3__*,size_t,size_t) ;

ngx_int_t
ngx_count_modules(ngx_cycle_t *cycle, ngx_uint_t type)
{
    ngx_uint_t i, next, max;
    ngx_module_t *module;

    next = 0;
    max = 0;



    for (i = 0; cycle->modules[i]; i++) {
        module = cycle->modules[i];

        if (module->type != type) {
            continue;
        }

        if (module->ctx_index != NGX_MODULE_UNSET_INDEX) {



            if (module->ctx_index > max) {
                max = module->ctx_index;
            }

            if (module->ctx_index == next) {
                next++;
            }

            continue;
        }



        module->ctx_index = ngx_module_ctx_index(cycle, type, next);

        if (module->ctx_index > max) {
            max = module->ctx_index;
        }

        next = module->ctx_index + 1;
    }
    if (cycle->old_cycle && cycle->old_cycle->modules) {

        for (i = 0; cycle->old_cycle->modules[i]; i++) {
            module = cycle->old_cycle->modules[i];

            if (module->type != type) {
                continue;
            }

            if (module->ctx_index > max) {
                max = module->ctx_index;
            }
        }
    }



    cycle->modules_used = 1;

    return max + 1;
}
