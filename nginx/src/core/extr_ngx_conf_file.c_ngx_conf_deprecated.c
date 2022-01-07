
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ngx_conf_t ;
struct TYPE_2__ {int new_name; int old_name; } ;
typedef TYPE_1__ ngx_conf_deprecated_t ;


 char* NGX_CONF_OK ;
 int NGX_LOG_WARN ;
 int ngx_conf_log_error (int ,int *,int ,char*,int ,int ) ;

char *
ngx_conf_deprecated(ngx_conf_t *cf, void *post, void *data)
{
    ngx_conf_deprecated_t *d = post;

    ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                       "the \"%s\" directive is deprecated, "
                       "use the \"%s\" directive instead",
                       d->old_name, d->new_name);

    return NGX_CONF_OK;
}
