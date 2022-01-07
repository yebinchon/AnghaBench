
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_log_t ;
struct TYPE_6__ {TYPE_1__* cycle; } ;
typedef TYPE_2__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_5__ {int new_log; } ;


 char* ngx_log_set_log (TYPE_2__*,int **) ;

__attribute__((used)) static char *
ngx_error_log(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_log_t *dummy;

    dummy = &cf->cycle->new_log;

    return ngx_log_set_log(cf, &dummy);
}
