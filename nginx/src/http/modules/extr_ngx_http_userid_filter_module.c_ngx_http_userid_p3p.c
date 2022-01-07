
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_str_set (TYPE_1__*,char*) ;
 scalar_t__ ngx_strcmp (int ,char*) ;

__attribute__((used)) static char *
ngx_http_userid_p3p(ngx_conf_t *cf, void *post, void *data)
{
    ngx_str_t *p3p = data;

    if (ngx_strcmp(p3p->data, "none") == 0) {
        ngx_str_set(p3p, "");
    }

    return NGX_CONF_OK;
}
