
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {int not_found; } ;
typedef TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_14__ {scalar_t__* uid_set; } ;
typedef TYPE_2__ ngx_http_userid_ctx_t ;
struct TYPE_15__ {scalar_t__ enable; int name; } ;
typedef TYPE_3__ ngx_http_userid_conf_t ;
struct TYPE_16__ {int main; } ;
typedef TYPE_4__ ngx_http_request_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_USERID_V1 ;
 scalar_t__ NGX_OK ;
 TYPE_3__* ngx_http_get_module_loc_conf (int ,int ) ;
 scalar_t__ ngx_http_userid_create_uid (int ,TYPE_2__*,TYPE_3__*) ;
 int ngx_http_userid_filter_module ;
 TYPE_2__* ngx_http_userid_get_uid (int ,TYPE_3__*) ;
 scalar_t__ ngx_http_userid_variable (int ,TYPE_1__*,int *,scalar_t__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_userid_set_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_http_userid_ctx_t *ctx;
    ngx_http_userid_conf_t *conf;

    conf = ngx_http_get_module_loc_conf(r->main, ngx_http_userid_filter_module);

    if (conf->enable < NGX_HTTP_USERID_V1) {
        v->not_found = 1;
        return NGX_OK;
    }

    ctx = ngx_http_userid_get_uid(r->main, conf);

    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    if (ngx_http_userid_create_uid(r->main, ctx, conf) != NGX_OK) {
        return NGX_ERROR;
    }

    if (ctx->uid_set[3] == 0) {
        v->not_found = 1;
        return NGX_OK;
    }

    return ngx_http_userid_variable(r->main, v, &conf->name, ctx->uid_set);
}
