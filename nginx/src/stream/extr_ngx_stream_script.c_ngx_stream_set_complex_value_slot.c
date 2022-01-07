
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_stream_complex_value_t ;
struct TYPE_10__ {int * complex_value; int * value; TYPE_3__* cf; } ;
typedef TYPE_2__ ngx_stream_compile_complex_value_t ;
typedef int ngx_str_t ;
struct TYPE_11__ {TYPE_1__* args; int pool; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_12__ {int offset; } ;
typedef TYPE_4__ ngx_command_t ;
struct TYPE_9__ {int * elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 int ngx_memzero (TYPE_2__*,int) ;
 int * ngx_palloc (int ,int) ;
 scalar_t__ ngx_stream_compile_complex_value (TYPE_2__*) ;

char *
ngx_stream_set_complex_value_slot(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{
    char *p = conf;

    ngx_str_t *value;
    ngx_stream_complex_value_t **cv;
    ngx_stream_compile_complex_value_t ccv;

    cv = (ngx_stream_complex_value_t **) (p + cmd->offset);

    if (*cv != ((void*)0)) {
        return "is duplicate";
    }

    *cv = ngx_palloc(cf->pool, sizeof(ngx_stream_complex_value_t));
    if (*cv == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    value = cf->args->elts;

    ngx_memzero(&ccv, sizeof(ngx_stream_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = &value[1];
    ccv.complex_value = *cv;

    if (ngx_stream_compile_complex_value(&ccv) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
