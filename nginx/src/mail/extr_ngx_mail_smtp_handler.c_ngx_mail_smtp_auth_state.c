
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;


struct TYPE_36__ {int nelts; } ;
struct TYPE_41__ {scalar_t__ len; } ;
struct TYPE_38__ {int blocked; int mail_state; int quit; scalar_t__ arg_start; TYPE_2__* buffer; int state; TYPE_1__ args; TYPE_6__ out; int command; } ;
typedef TYPE_3__ ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_39__ {scalar_t__ timedout; TYPE_5__* data; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_40__ {int timedout; int write; int log; TYPE_3__* data; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_37__ {scalar_t__ pos; scalar_t__ last; scalar_t__ start; } ;


 int NGX_AGAIN ;


 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_MAIL ;
 int NGX_LOG_INFO ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_mail_auth (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_auth_cram_md5 (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_auth_external (TYPE_3__*,TYPE_5__*,int ) ;
 int ngx_mail_auth_login_password (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_auth_login_username (TYPE_3__*,TYPE_5__*,int ) ;
 int ngx_mail_auth_plain (TYPE_3__*,TYPE_5__*,int ) ;
 int ngx_mail_close_connection (TYPE_5__*) ;
 int ngx_mail_read_command (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_send (int ) ;
 int ngx_mail_session_internal_server_error (TYPE_3__*) ;
 int ngx_mail_smtp_auth (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_smtp_helo (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_smtp_mail (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_smtp_rcpt (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_smtp_rset (TYPE_3__*,TYPE_5__*) ;
 int ngx_mail_smtp_starttls (TYPE_3__*,TYPE_5__*) ;






 int ngx_str_set (TYPE_6__*,int ) ;
 int smtp_bye ;
 int smtp_invalid_command ;
 int smtp_ok ;
 int smtp_password ;
 int smtp_starttls ;

void
ngx_mail_smtp_auth_state(ngx_event_t *rev)
{
    ngx_int_t rc;
    ngx_connection_t *c;
    ngx_mail_session_t *s;

    c = rev->data;
    s = c->data;

    ngx_log_debug0(NGX_LOG_DEBUG_MAIL, c->log, 0, "smtp auth state");

    if (rev->timedout) {
        ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        c->timedout = 1;
        ngx_mail_close_connection(c);
        return;
    }

    if (s->out.len) {
        ngx_log_debug0(NGX_LOG_DEBUG_MAIL, c->log, 0, "smtp send handler busy");
        s->blocked = 1;
        return;
    }

    s->blocked = 0;

    rc = ngx_mail_read_command(s, c);

    if (rc == NGX_AGAIN || rc == 145) {
        return;
    }

    ngx_str_set(&s->out, smtp_ok);

    if (rc == 143) {
        switch (s->mail_state) {

        case 128:

            switch (s->command) {

            case 140:
            case 141:
                rc = ngx_mail_smtp_helo(s, c);
                break;

            case 142:
                rc = ngx_mail_smtp_auth(s, c);
                break;

            case 137:
                s->quit = 1;
                ngx_str_set(&s->out, smtp_bye);
                break;

            case 139:
                rc = ngx_mail_smtp_mail(s, c);
                break;

            case 136:
                rc = ngx_mail_smtp_rcpt(s, c);
                break;

            case 135:
                rc = ngx_mail_smtp_rset(s, c);
                break;

            case 138:
                break;

            case 134:
                rc = ngx_mail_smtp_starttls(s, c);
                ngx_str_set(&s->out, smtp_starttls);
                break;

            default:
                rc = 144;
                break;
            }

            break;

        case 130:
            rc = ngx_mail_auth_login_username(s, c, 0);

            ngx_str_set(&s->out, smtp_password);
            s->mail_state = 131;
            break;

        case 131:
            rc = ngx_mail_auth_login_password(s, c);
            break;

        case 129:
            rc = ngx_mail_auth_plain(s, c, 0);
            break;

        case 133:
            rc = ngx_mail_auth_cram_md5(s, c);
            break;

        case 132:
            rc = ngx_mail_auth_external(s, c, 0);
            break;
        }
    }

    if (s->buffer->pos < s->buffer->last) {
        s->blocked = 1;
    }

    switch (rc) {

    case 146:
        ngx_mail_auth(s, c);
        return;

    case 145:
        ngx_mail_session_internal_server_error(s);
        return;

    case 144:
        s->mail_state = 128;
        s->state = 0;
        ngx_str_set(&s->out, smtp_invalid_command);



    case 143:
        s->args.nelts = 0;

        if (s->buffer->pos == s->buffer->last) {
            s->buffer->pos = s->buffer->start;
            s->buffer->last = s->buffer->start;
        }

        if (s->state) {
            s->arg_start = s->buffer->pos;
        }

        ngx_mail_send(c->write);
    }
}
