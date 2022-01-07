
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * from; } ;
typedef TYPE_1__ ngx_stream_realip_srv_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;

__attribute__((used)) static char *
ngx_stream_realip_merge_srv_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_stream_realip_srv_conf_t *prev = parent;
    ngx_stream_realip_srv_conf_t *conf = child;

    if (conf->from == ((void*)0)) {
        conf->from = prev->from;
    }

    return NGX_CONF_OK;
}
