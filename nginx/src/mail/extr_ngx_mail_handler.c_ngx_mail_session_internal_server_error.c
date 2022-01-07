
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int quit; TYPE_2__* connection; int out; } ;
typedef TYPE_3__ ngx_mail_session_t ;
struct TYPE_11__ {TYPE_1__* protocol; } ;
typedef TYPE_4__ ngx_mail_core_srv_conf_t ;
struct TYPE_9__ {int write; } ;
struct TYPE_8__ {int internal_server_error; } ;


 int ngx_mail_core_module ;
 TYPE_4__* ngx_mail_get_module_srv_conf (TYPE_3__*,int ) ;
 int ngx_mail_send (int ) ;

void
ngx_mail_session_internal_server_error(ngx_mail_session_t *s)
{
    ngx_mail_core_srv_conf_t *cscf;

    cscf = ngx_mail_get_module_srv_conf(s, ngx_mail_core_module);

    s->out = cscf->protocol->internal_server_error;
    s->quit = 1;

    ngx_mail_send(s->connection->write);
}
