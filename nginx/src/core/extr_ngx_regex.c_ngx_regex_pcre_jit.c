
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ngx_flag_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int NGX_LOG_WARN ;
 int PCRE_CONFIG_JIT ;
 int ngx_conf_log_error (int ,int *,int ,char*) ;
 int pcre_config (int ,int*) ;

__attribute__((used)) static char *
ngx_regex_pcre_jit(ngx_conf_t *cf, void *post, void *data)
{
    ngx_flag_t *fp = data;

    if (*fp == 0) {
        return NGX_CONF_OK;
    }
    ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                       "nginx was built without PCRE JIT support");
    *fp = 0;


    return NGX_CONF_OK;
}
