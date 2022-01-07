
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_str_t ;
struct TYPE_11__ {scalar_t__ version; char* signature; char* name; size_t index; scalar_t__ type; TYPE_2__* ctx; } ;
typedef TYPE_1__ ngx_module_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {void* (* create_conf ) (TYPE_4__*) ;} ;
typedef TYPE_2__ ngx_core_module_t ;
struct TYPE_13__ {TYPE_4__* cycle; int log; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_14__ {size_t modules_n; void** conf_ctx; TYPE_1__** modules; } ;


 scalar_t__ NGX_CORE_MODULE ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_LOG_EMERG ;
 char* NGX_MODULE_SIGNATURE ;
 size_t NGX_MODULE_UNSET_INDEX ;
 int NGX_OK ;
 scalar_t__ nginx_version ;
 int ngx_conf_log_error (int ,TYPE_3__*,int ,char*,...) ;
 int ngx_log_debug2 (int ,int ,int ,char*,char*,char*) ;
 int ngx_log_debug3 (int ,int ,int ,char*,char*,char*,size_t) ;
 size_t ngx_max_module ;
 int ngx_memmove (TYPE_1__**,TYPE_1__**,size_t) ;
 size_t ngx_module_index (TYPE_4__*) ;
 scalar_t__ ngx_strcmp (char*,char*) ;
 void* stub1 (TYPE_4__*) ;

ngx_int_t
ngx_add_module(ngx_conf_t *cf, ngx_str_t *file, ngx_module_t *module,
    char **order)
{
    void *rv;
    ngx_uint_t i, m, before;
    ngx_core_module_t *core_module;

    if (cf->cycle->modules_n >= ngx_max_module) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "too many modules loaded");
        return NGX_ERROR;
    }

    if (module->version != nginx_version) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "module \"%V\" version %ui instead of %ui",
                           file, module->version, (ngx_uint_t) nginx_version);
        return NGX_ERROR;
    }

    if (ngx_strcmp(module->signature, NGX_MODULE_SIGNATURE) != 0) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "module \"%V\" is not binary compatible",
                           file);
        return NGX_ERROR;
    }

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (ngx_strcmp(cf->cycle->modules[m]->name, module->name) == 0) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "module \"%s\" is already loaded",
                               module->name);
            return NGX_ERROR;
        }
    }





    if (module->index == NGX_MODULE_UNSET_INDEX) {
        module->index = ngx_module_index(cf->cycle);

        if (module->index >= ngx_max_module) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "too many modules loaded");
            return NGX_ERROR;
        }
    }





    before = cf->cycle->modules_n;

    if (order) {
        for (i = 0; order[i]; i++) {
            if (ngx_strcmp(order[i], module->name) == 0) {
                i++;
                break;
            }
        }

        for ( ; order[i]; i++) {







            for (m = 0; m < before; m++) {
                if (ngx_strcmp(cf->cycle->modules[m]->name, order[i]) == 0) {

                    ngx_log_debug3(NGX_LOG_DEBUG_CORE, cf->log, 0,
                                   "module: %s before %s:%i",
                                   module->name, order[i], m);

                    before = m;
                    break;
                }
            }
        }
    }



    if (before != cf->cycle->modules_n) {
        ngx_memmove(&cf->cycle->modules[before + 1],
                    &cf->cycle->modules[before],
                    (cf->cycle->modules_n - before) * sizeof(ngx_module_t *));
    }

    cf->cycle->modules[before] = module;
    cf->cycle->modules_n++;

    if (module->type == NGX_CORE_MODULE) {
        core_module = module->ctx;

        if (core_module->create_conf) {
            rv = core_module->create_conf(cf->cycle);
            if (rv == ((void*)0)) {
                return NGX_ERROR;
            }

            cf->cycle->conf_ctx[module->index] = rv;
        }
    }

    return NGX_OK;
}
