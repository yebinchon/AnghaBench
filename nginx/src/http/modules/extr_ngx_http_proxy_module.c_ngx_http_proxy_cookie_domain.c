
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {char* data; int len; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_18__ {int complex; } ;
struct TYPE_20__ {int replacement; int handler; TYPE_2__ pattern; } ;
typedef TYPE_4__ ngx_http_proxy_rewrite_t ;
struct TYPE_21__ {int * cookie_domains; } ;
typedef TYPE_5__ ngx_http_proxy_loc_conf_t ;
struct TYPE_22__ {int * complex_value; TYPE_3__* value; TYPE_7__* cf; } ;
typedef TYPE_6__ ngx_http_compile_complex_value_t ;
struct TYPE_23__ {int pool; TYPE_1__* args; } ;
typedef TYPE_7__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_17__ {int nelts; TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * NGX_CONF_UNSET_PTR ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int * ngx_array_create (int ,int,int) ;
 TYPE_4__* ngx_array_push (int *) ;
 int ngx_conf_log_error (int ,TYPE_7__*,int ,char*,TYPE_3__*) ;
 scalar_t__ ngx_http_compile_complex_value (TYPE_6__*) ;
 int ngx_http_proxy_rewrite_domain_handler ;
 scalar_t__ ngx_http_proxy_rewrite_regex (TYPE_7__*,TYPE_4__*,TYPE_3__*,int) ;
 int ngx_memzero (TYPE_6__*,int) ;
 scalar_t__ ngx_strcmp (char*,char*) ;

__attribute__((used)) static char *
ngx_http_proxy_cookie_domain(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_proxy_loc_conf_t *plcf = conf;

    ngx_str_t *value;
    ngx_http_proxy_rewrite_t *pr;
    ngx_http_compile_complex_value_t ccv;

    if (plcf->cookie_domains == ((void*)0)) {
        return NGX_CONF_OK;
    }

    value = cf->args->elts;

    if (cf->args->nelts == 2) {

        if (ngx_strcmp(value[1].data, "off") == 0) {
            plcf->cookie_domains = ((void*)0);
            return NGX_CONF_OK;
        }

        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid parameter \"%V\"", &value[1]);
        return NGX_CONF_ERROR;
    }

    if (plcf->cookie_domains == NGX_CONF_UNSET_PTR) {
        plcf->cookie_domains = ngx_array_create(cf->pool, 1,
                                     sizeof(ngx_http_proxy_rewrite_t));
        if (plcf->cookie_domains == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    pr = ngx_array_push(plcf->cookie_domains);
    if (pr == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    if (value[1].data[0] == '~') {
        value[1].len--;
        value[1].data++;

        if (ngx_http_proxy_rewrite_regex(cf, pr, &value[1], 1) != NGX_OK) {
            return NGX_CONF_ERROR;
        }

    } else {

        if (value[1].data[0] == '.') {
            value[1].len--;
            value[1].data++;
        }

        ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));

        ccv.cf = cf;
        ccv.value = &value[1];
        ccv.complex_value = &pr->pattern.complex;

        if (ngx_http_compile_complex_value(&ccv) != NGX_OK) {
            return NGX_CONF_ERROR;
        }

        pr->handler = ngx_http_proxy_rewrite_domain_handler;

        if (value[2].data[0] == '.') {
            value[2].len--;
            value[2].data++;
        }
    }

    ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = &value[2];
    ccv.complex_value = &pr->replacement;

    if (ngx_http_compile_complex_value(&ccv) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
