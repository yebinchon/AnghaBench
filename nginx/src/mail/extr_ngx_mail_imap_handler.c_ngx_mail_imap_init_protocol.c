
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int ngx_str_t ;
struct TYPE_15__ {int mail_state; int * buffer; int args; } ;
typedef TYPE_2__ ngx_mail_session_t ;
struct TYPE_16__ {int client_buffer_size; } ;
typedef TYPE_3__ ngx_mail_imap_srv_conf_t ;
struct TYPE_17__ {scalar_t__ timedout; TYPE_5__* data; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_18__ {int timedout; TYPE_1__* read; int pool; TYPE_2__* data; TYPE_12__* log; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_14__ {int (* handler ) (TYPE_4__*) ;} ;
struct TYPE_13__ {char* action; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_INFO ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 int * ngx_create_temp_buf (int ,int ) ;
 int ngx_imap_start ;
 int ngx_log_error (int ,TYPE_12__*,int ,char*) ;
 int ngx_mail_close_connection (TYPE_5__*) ;
 TYPE_3__* ngx_mail_get_module_srv_conf (TYPE_2__*,int ) ;
 int ngx_mail_imap_auth_state (TYPE_4__*) ;
 int ngx_mail_imap_module ;
 int ngx_mail_session_internal_server_error (TYPE_2__*) ;

void
ngx_mail_imap_init_protocol(ngx_event_t *rev)
{
    ngx_connection_t *c;
    ngx_mail_session_t *s;
    ngx_mail_imap_srv_conf_t *iscf;

    c = rev->data;

    c->log->action = "in auth state";

    if (rev->timedout) {
        ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        c->timedout = 1;
        ngx_mail_close_connection(c);
        return;
    }

    s = c->data;

    if (s->buffer == ((void*)0)) {
        if (ngx_array_init(&s->args, c->pool, 2, sizeof(ngx_str_t))
            == NGX_ERROR)
        {
            ngx_mail_session_internal_server_error(s);
            return;
        }

        iscf = ngx_mail_get_module_srv_conf(s, ngx_mail_imap_module);

        s->buffer = ngx_create_temp_buf(c->pool, iscf->client_buffer_size);
        if (s->buffer == ((void*)0)) {
            ngx_mail_session_internal_server_error(s);
            return;
        }
    }

    s->mail_state = ngx_imap_start;
    c->read->handler = ngx_mail_imap_auth_state;

    ngx_mail_imap_auth_state(rev);
}
