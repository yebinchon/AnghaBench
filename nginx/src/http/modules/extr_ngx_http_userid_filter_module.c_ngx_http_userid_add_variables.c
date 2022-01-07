
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_3__ {int get_handler; } ;
typedef TYPE_1__ ngx_http_variable_t ;
typedef int ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_VAR_CHANGEABLE ;
 scalar_t__ NGX_OK ;
 TYPE_1__* ngx_http_add_variable (int *,int *,int ) ;
 scalar_t__ ngx_http_get_variable_index (int *,int *) ;
 int ngx_http_userid_got ;
 int ngx_http_userid_got_variable ;
 int ngx_http_userid_reset ;
 scalar_t__ ngx_http_userid_reset_index ;
 int ngx_http_userid_reset_variable ;
 int ngx_http_userid_set ;
 int ngx_http_userid_set_variable ;

__attribute__((used)) static ngx_int_t
ngx_http_userid_add_variables(ngx_conf_t *cf)
{
    ngx_int_t n;
    ngx_http_variable_t *var;

    var = ngx_http_add_variable(cf, &ngx_http_userid_got, 0);
    if (var == ((void*)0)) {
        return NGX_ERROR;
    }

    var->get_handler = ngx_http_userid_got_variable;

    var = ngx_http_add_variable(cf, &ngx_http_userid_set, 0);
    if (var == ((void*)0)) {
        return NGX_ERROR;
    }

    var->get_handler = ngx_http_userid_set_variable;

    var = ngx_http_add_variable(cf, &ngx_http_userid_reset,
                                NGX_HTTP_VAR_CHANGEABLE);
    if (var == ((void*)0)) {
        return NGX_ERROR;
    }

    var->get_handler = ngx_http_userid_reset_variable;

    n = ngx_http_get_variable_index(cf, &ngx_http_userid_reset);
    if (n == NGX_ERROR) {
        return NGX_ERROR;
    }

    ngx_http_userid_reset_index = n;

    return NGX_OK;
}
