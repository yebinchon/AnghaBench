
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ secret; int * md5; int * variable; } ;
typedef TYPE_2__ ngx_http_secure_link_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,int *,int ,char*) ;

__attribute__((used)) static char *
ngx_http_secure_link_merge_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_secure_link_conf_t *prev = parent;
    ngx_http_secure_link_conf_t *conf = child;

    if (conf->secret.data) {
        if (conf->variable || conf->md5) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "\"secure_link_secret\" cannot be mixed with "
                               "\"secure_link\" and \"secure_link_md5\"");
            return NGX_CONF_ERROR;
        }

        return NGX_CONF_OK;
    }

    if (conf->variable == ((void*)0)) {
        conf->variable = prev->variable;
    }

    if (conf->md5 == ((void*)0)) {
        conf->md5 = prev->md5;
    }

    if (conf->variable == ((void*)0) && conf->md5 == ((void*)0)) {
        conf->secret = prev->secret;
    }

    return NGX_CONF_OK;
}
