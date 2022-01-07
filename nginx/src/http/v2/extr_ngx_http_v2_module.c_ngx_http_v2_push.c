
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_11__ {int push; int * pushes; } ;
typedef TYPE_3__ ngx_http_v2_loc_conf_t ;
typedef int ngx_http_complex_value_t ;
struct TYPE_12__ {int * complex_value; TYPE_2__* value; TYPE_5__* cf; } ;
typedef TYPE_4__ ngx_http_compile_complex_value_t ;
struct TYPE_13__ {int pool; TYPE_1__* args; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_9__ {TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 int * ngx_array_create (int ,int,int) ;
 int * ngx_array_push (int *) ;
 scalar_t__ ngx_http_compile_complex_value (TYPE_4__*) ;
 int ngx_memzero (TYPE_4__*,int) ;
 scalar_t__ ngx_strcmp (int ,char*) ;

__attribute__((used)) static char *
ngx_http_v2_push(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_v2_loc_conf_t *h2lcf = conf;

    ngx_str_t *value;
    ngx_http_complex_value_t *cv;
    ngx_http_compile_complex_value_t ccv;

    value = cf->args->elts;

    if (ngx_strcmp(value[1].data, "off") == 0) {

        if (h2lcf->pushes) {
            return "\"off\" parameter cannot be used with URI";
        }

        if (h2lcf->push == 0) {
            return "is duplicate";
        }

        h2lcf->push = 0;
        return NGX_CONF_OK;
    }

    if (h2lcf->push == 0) {
        return "URI cannot be used with \"off\" parameter";
    }

    h2lcf->push = 1;

    if (h2lcf->pushes == ((void*)0)) {
        h2lcf->pushes = ngx_array_create(cf->pool, 1,
                                         sizeof(ngx_http_complex_value_t));
        if (h2lcf->pushes == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    cv = ngx_array_push(h2lcf->pushes);
    if (cv == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = &value[1];
    ccv.complex_value = cv;

    if (ngx_http_compile_complex_value(&ccv) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
