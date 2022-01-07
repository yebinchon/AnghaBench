
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__ socket_dir; int push_reconnect; int auto_push; } ;
typedef TYPE_1__ ngx_rtmp_auto_push_conf_t ;
typedef int ngx_cycle_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_init_msec_value (int ,int) ;
 int ngx_conf_init_value (int ,int ) ;
 int ngx_str_set (TYPE_2__*,char*) ;

__attribute__((used)) static char *
ngx_rtmp_auto_push_init_conf(ngx_cycle_t *cycle, void *conf)
{
    ngx_rtmp_auto_push_conf_t *apcf = conf;

    ngx_conf_init_value(apcf->auto_push, 0);
    ngx_conf_init_msec_value(apcf->push_reconnect, 100);

    if (apcf->socket_dir.len == 0) {
        ngx_str_set(&apcf->socket_dir, "/tmp");
    }

    return NGX_CONF_OK;
}
