
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error_log; } ;
typedef TYPE_1__ ngx_stream_core_srv_conf_t ;
typedef int ngx_conf_t ;
typedef int ngx_command_t ;


 char* ngx_log_set_log (int *,int *) ;

__attribute__((used)) static char *
ngx_stream_core_error_log(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_stream_core_srv_conf_t *cscf = conf;

    return ngx_log_set_log(cf, &cscf->error_log);
}
