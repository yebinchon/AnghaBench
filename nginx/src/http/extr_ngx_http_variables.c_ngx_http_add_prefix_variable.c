
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef size_t ngx_uint_t ;
struct TYPE_17__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_16__ {scalar_t__ len; int * data; } ;
struct TYPE_18__ {int flags; scalar_t__ index; scalar_t__ data; int * get_handler; int * set_handler; TYPE_1__ name; } ;
typedef TYPE_3__ ngx_http_variable_t ;
struct TYPE_15__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_19__ {TYPE_14__ prefix_variables; } ;
typedef TYPE_4__ ngx_http_core_main_conf_t ;
struct TYPE_20__ {int pool; } ;
typedef TYPE_5__ ngx_conf_t ;


 int NGX_HTTP_VAR_CHANGEABLE ;
 size_t NGX_HTTP_VAR_WEAK ;
 int NGX_LOG_EMERG ;
 TYPE_3__* ngx_array_push (TYPE_14__*) ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*,TYPE_2__*) ;
 TYPE_4__* ngx_http_conf_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_http_core_module ;
 int * ngx_pnalloc (int ,scalar_t__) ;
 int ngx_strlow (int *,int ,scalar_t__) ;
 scalar_t__ ngx_strncasecmp (int ,int *,scalar_t__) ;

__attribute__((used)) static ngx_http_variable_t *
ngx_http_add_prefix_variable(ngx_conf_t *cf, ngx_str_t *name, ngx_uint_t flags)
{
    ngx_uint_t i;
    ngx_http_variable_t *v;
    ngx_http_core_main_conf_t *cmcf;

    cmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_core_module);

    v = cmcf->prefix_variables.elts;
    for (i = 0; i < cmcf->prefix_variables.nelts; i++) {
        if (name->len != v[i].name.len
            || ngx_strncasecmp(name->data, v[i].name.data, name->len) != 0)
        {
            continue;
        }

        v = &v[i];

        if (!(v->flags & NGX_HTTP_VAR_CHANGEABLE)) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "the duplicate \"%V\" variable", name);
            return ((void*)0);
        }

        if (!(flags & NGX_HTTP_VAR_WEAK)) {
            v->flags &= ~NGX_HTTP_VAR_WEAK;
        }

        return v;
    }

    v = ngx_array_push(&cmcf->prefix_variables);
    if (v == ((void*)0)) {
        return ((void*)0);
    }

    v->name.len = name->len;
    v->name.data = ngx_pnalloc(cf->pool, name->len);
    if (v->name.data == ((void*)0)) {
        return ((void*)0);
    }

    ngx_strlow(v->name.data, name->data, name->len);

    v->set_handler = ((void*)0);
    v->get_handler = ((void*)0);
    v->data = 0;
    v->flags = flags;
    v->index = 0;

    return v;
}
