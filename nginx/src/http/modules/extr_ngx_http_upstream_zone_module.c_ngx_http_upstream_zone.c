
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_16__ {int len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_17__ {TYPE_5__* shm_zone; } ;
typedef TYPE_3__ ngx_http_upstream_srv_conf_t ;
typedef int ngx_http_upstream_main_conf_t ;
struct TYPE_18__ {TYPE_1__* args; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_19__ {int noreuse; int * data; int init; } ;
struct TYPE_15__ {int nelts; TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,TYPE_2__*) ;
 int * ngx_http_conf_get_module_main_conf (TYPE_4__*,int ) ;
 TYPE_3__* ngx_http_conf_get_module_srv_conf (TYPE_4__*,int ) ;
 int ngx_http_upstream_init_zone ;
 int ngx_http_upstream_module ;
 int ngx_pagesize ;
 scalar_t__ ngx_parse_size (TYPE_2__*) ;
 TYPE_5__* ngx_shared_memory_add (TYPE_4__*,TYPE_2__*,scalar_t__,int *) ;

__attribute__((used)) static char *
ngx_http_upstream_zone(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ssize_t size;
    ngx_str_t *value;
    ngx_http_upstream_srv_conf_t *uscf;
    ngx_http_upstream_main_conf_t *umcf;

    uscf = ngx_http_conf_get_module_srv_conf(cf, ngx_http_upstream_module);
    umcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_upstream_module);

    value = cf->args->elts;

    if (!value[1].len) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid zone name \"%V\"", &value[1]);
        return NGX_CONF_ERROR;
    }

    if (cf->args->nelts == 3) {
        size = ngx_parse_size(&value[2]);

        if (size == NGX_ERROR) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid zone size \"%V\"", &value[2]);
            return NGX_CONF_ERROR;
        }

        if (size < (ssize_t) (8 * ngx_pagesize)) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "zone \"%V\" is too small", &value[1]);
            return NGX_CONF_ERROR;
        }

    } else {
        size = 0;
    }

    uscf->shm_zone = ngx_shared_memory_add(cf, &value[1], size,
                                           &ngx_http_upstream_module);
    if (uscf->shm_zone == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    uscf->shm_zone->init = ngx_http_upstream_init_zone;
    uscf->shm_zone->data = umcf;

    uscf->shm_zone->noreuse = 1;

    return NGX_CONF_OK;
}
