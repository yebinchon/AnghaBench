
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_8__ {int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_9__ {scalar_t__ expires; } ;
typedef TYPE_3__ ngx_http_userid_conf_t ;
struct TYPE_10__ {TYPE_1__* args; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_7__ {TYPE_2__* elts; } ;


 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_USERID_MAX_EXPIRES ;
 scalar_t__ ngx_parse_time (TYPE_2__*,int) ;
 scalar_t__ ngx_strcmp (int ,char*) ;

__attribute__((used)) static char *
ngx_http_userid_expires(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_userid_conf_t *ucf = conf;

    ngx_str_t *value;

    if (ucf->expires != NGX_CONF_UNSET) {
        return "is duplicate";
    }

    value = cf->args->elts;

    if (ngx_strcmp(value[1].data, "max") == 0) {
        ucf->expires = NGX_HTTP_USERID_MAX_EXPIRES;
        return NGX_CONF_OK;
    }

    if (ngx_strcmp(value[1].data, "off") == 0) {
        ucf->expires = 0;
        return NGX_CONF_OK;
    }

    ucf->expires = ngx_parse_time(&value[1], 1);
    if (ucf->expires == (time_t) NGX_ERROR) {
        return "invalid value";
    }

    return NGX_CONF_OK;
}
