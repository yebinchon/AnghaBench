
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_14__ {int len; int * data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_15__ {uintptr_t status; int text; int * complex_value; TYPE_2__* value; TYPE_6__* cf; int code; } ;
typedef TYPE_3__ ngx_http_script_return_code_t ;
struct TYPE_16__ {int codes; } ;
typedef TYPE_4__ ngx_http_rewrite_loc_conf_t ;
typedef TYPE_3__ ngx_http_compile_complex_value_t ;
struct TYPE_17__ {TYPE_1__* args; int pool; } ;
typedef TYPE_6__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_13__ {int nelts; TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_ERROR ;
 uintptr_t NGX_HTTP_MOVED_TEMPORARILY ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 uintptr_t ngx_atoi (int *,int ) ;
 int ngx_conf_log_error (int ,TYPE_6__*,int ,char*,TYPE_2__*) ;
 scalar_t__ ngx_http_compile_complex_value (TYPE_3__*) ;
 int ngx_http_script_return_code ;
 TYPE_3__* ngx_http_script_start_code (int ,int *,int) ;
 int ngx_memzero (TYPE_3__*,int) ;
 scalar_t__ ngx_strncmp (int *,char*,int) ;

__attribute__((used)) static char *
ngx_http_rewrite_return(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_rewrite_loc_conf_t *lcf = conf;

    u_char *p;
    ngx_str_t *value, *v;
    ngx_http_script_return_code_t *ret;
    ngx_http_compile_complex_value_t ccv;

    ret = ngx_http_script_start_code(cf->pool, &lcf->codes,
                                     sizeof(ngx_http_script_return_code_t));
    if (ret == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    value = cf->args->elts;

    ngx_memzero(ret, sizeof(ngx_http_script_return_code_t));

    ret->code = ngx_http_script_return_code;

    p = value[1].data;

    ret->status = ngx_atoi(p, value[1].len);

    if (ret->status == (uintptr_t) NGX_ERROR) {

        if (cf->args->nelts == 2
            && (ngx_strncmp(p, "http://", sizeof("http://") - 1) == 0
                || ngx_strncmp(p, "https://", sizeof("https://") - 1) == 0
                || ngx_strncmp(p, "$scheme", sizeof("$scheme") - 1) == 0))
        {
            ret->status = NGX_HTTP_MOVED_TEMPORARILY;
            v = &value[1];

        } else {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid return code \"%V\"", &value[1]);
            return NGX_CONF_ERROR;
        }

    } else {

        if (ret->status > 999) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid return code \"%V\"", &value[1]);
            return NGX_CONF_ERROR;
        }

        if (cf->args->nelts == 2) {
            return NGX_CONF_OK;
        }

        v = &value[2];
    }

    ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = v;
    ccv.complex_value = &ret->text;

    if (ngx_http_compile_complex_value(&ccv) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
