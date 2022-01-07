
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int out; } ;
typedef TYPE_1__ ngx_mail_session_t ;
struct TYPE_12__ {int timeout; } ;
typedef TYPE_2__ ngx_mail_core_srv_conf_t ;
struct TYPE_13__ {int write; TYPE_9__* read; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_14__ {int handler; } ;


 scalar_t__ NGX_OK ;
 int imap_greeting ;
 int ngx_add_timer (TYPE_9__*,int ) ;
 scalar_t__ ngx_handle_read_event (TYPE_9__*,int ) ;
 int ngx_mail_close_connection (TYPE_3__*) ;
 int ngx_mail_core_module ;
 TYPE_2__* ngx_mail_get_module_srv_conf (TYPE_1__*,int ) ;
 int ngx_mail_imap_init_protocol ;
 int ngx_mail_send (int ) ;
 int ngx_str_set (int *,int ) ;

void
ngx_mail_imap_init_session(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_mail_core_srv_conf_t *cscf;

    cscf = ngx_mail_get_module_srv_conf(s, ngx_mail_core_module);

    ngx_str_set(&s->out, imap_greeting);

    c->read->handler = ngx_mail_imap_init_protocol;

    ngx_add_timer(c->read, cscf->timeout);

    if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
        ngx_mail_close_connection(c);
    }

    ngx_mail_send(c->write);
}
