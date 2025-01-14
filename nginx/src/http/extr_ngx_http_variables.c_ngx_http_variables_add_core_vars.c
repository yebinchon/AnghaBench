
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_14__ {int flags; TYPE_11__ name; } ;
typedef TYPE_1__ ngx_http_variable_t ;
struct TYPE_15__ {int prefix_variables; TYPE_4__* variables_keys; } ;
typedef TYPE_2__ ngx_http_core_main_conf_t ;
typedef int ngx_hash_keys_arrays_t ;
struct TYPE_16__ {int pool; int temp_pool; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_17__ {int temp_pool; int pool; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HASH_SMALL ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 scalar_t__ ngx_hash_keys_array_init (TYPE_4__*,int ) ;
 TYPE_1__* ngx_http_add_variable (TYPE_3__*,TYPE_11__*,int ) ;
 TYPE_2__* ngx_http_conf_get_module_main_conf (TYPE_3__*,int ) ;
 int ngx_http_core_module ;
 TYPE_1__* ngx_http_core_variables ;
 TYPE_4__* ngx_pcalloc (int ,int) ;

ngx_int_t
ngx_http_variables_add_core_vars(ngx_conf_t *cf)
{
    ngx_http_variable_t *cv, *v;
    ngx_http_core_main_conf_t *cmcf;

    cmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_core_module);

    cmcf->variables_keys = ngx_pcalloc(cf->temp_pool,
                                       sizeof(ngx_hash_keys_arrays_t));
    if (cmcf->variables_keys == ((void*)0)) {
        return NGX_ERROR;
    }

    cmcf->variables_keys->pool = cf->pool;
    cmcf->variables_keys->temp_pool = cf->pool;

    if (ngx_hash_keys_array_init(cmcf->variables_keys, NGX_HASH_SMALL)
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_array_init(&cmcf->prefix_variables, cf->pool, 8,
                       sizeof(ngx_http_variable_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    for (cv = ngx_http_core_variables; cv->name.len; cv++) {
        v = ngx_http_add_variable(cf, &cv->name, cv->flags);
        if (v == ((void*)0)) {
            return NGX_ERROR;
        }

        *v = *cv;
    }

    return NGX_OK;
}
