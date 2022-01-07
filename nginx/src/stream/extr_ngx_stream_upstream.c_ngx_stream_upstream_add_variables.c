
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {int data; int get_handler; int flags; TYPE_4__ name; } ;
typedef TYPE_1__ ngx_stream_variable_t ;
typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_1__* ngx_stream_add_variable (int *,TYPE_4__*,int ) ;
 TYPE_1__* ngx_stream_upstream_vars ;

__attribute__((used)) static ngx_int_t
ngx_stream_upstream_add_variables(ngx_conf_t *cf)
{
    ngx_stream_variable_t *var, *v;

    for (v = ngx_stream_upstream_vars; v->name.len; v++) {
        var = ngx_stream_add_variable(cf, &v->name, v->flags);
        if (var == ((void*)0)) {
            return NGX_ERROR;
        }

        var->get_handler = v->get_handler;
        var->data = v->data;
    }

    return NGX_OK;
}
