
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef size_t ngx_uint_t ;
struct TYPE_16__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef size_t ngx_int_t ;
struct TYPE_15__ {scalar_t__ len; int * data; } ;
struct TYPE_17__ {size_t index; scalar_t__ flags; scalar_t__ data; int * get_handler; int * set_handler; TYPE_1__ name; } ;
typedef TYPE_3__ ngx_http_variable_t ;
struct TYPE_14__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_18__ {TYPE_12__ variables; } ;
typedef TYPE_4__ ngx_http_core_main_conf_t ;
struct TYPE_19__ {int pool; } ;
typedef TYPE_5__ ngx_conf_t ;


 size_t NGX_ERROR ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_12__*,int ,int,int) ;
 TYPE_3__* ngx_array_push (TYPE_12__*) ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*) ;
 TYPE_4__* ngx_http_conf_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_http_core_module ;
 int * ngx_pnalloc (int ,scalar_t__) ;
 int ngx_strlow (int *,int ,scalar_t__) ;
 scalar_t__ ngx_strncasecmp (int ,int *,scalar_t__) ;

ngx_int_t
ngx_http_get_variable_index(ngx_conf_t *cf, ngx_str_t *name)
{
    ngx_uint_t i;
    ngx_http_variable_t *v;
    ngx_http_core_main_conf_t *cmcf;

    if (name->len == 0) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid variable name \"$\"");
        return NGX_ERROR;
    }

    cmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_core_module);

    v = cmcf->variables.elts;

    if (v == ((void*)0)) {
        if (ngx_array_init(&cmcf->variables, cf->pool, 4,
                           sizeof(ngx_http_variable_t))
            != NGX_OK)
        {
            return NGX_ERROR;
        }

    } else {
        for (i = 0; i < cmcf->variables.nelts; i++) {
            if (name->len != v[i].name.len
                || ngx_strncasecmp(name->data, v[i].name.data, name->len) != 0)
            {
                continue;
            }

            return i;
        }
    }

    v = ngx_array_push(&cmcf->variables);
    if (v == ((void*)0)) {
        return NGX_ERROR;
    }

    v->name.len = name->len;
    v->name.data = ngx_pnalloc(cf->pool, name->len);
    if (v->name.data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_strlow(v->name.data, name->data, name->len);

    v->set_handler = ((void*)0);
    v->get_handler = ((void*)0);
    v->data = 0;
    v->flags = 0;
    v->index = cmcf->variables.nelts - 1;

    return v->index;
}
