
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_37__ {int len; int * data; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_41__ {scalar_t__ len; int * data; } ;
struct TYPE_36__ {size_t nelts; TYPE_4__* elts; } ;
struct TYPE_34__ {scalar_t__ len; int * data; } ;
struct TYPE_38__ {int blocked; int mail_state; int quit; scalar_t__ arg_start; TYPE_8__ tag; TYPE_2__* buffer; scalar_t__ state; TYPE_3__ args; TYPE_1__ tagged_line; TYPE_8__ out; TYPE_8__ text; int command; scalar_t__ backslash; } ;
typedef TYPE_5__ ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_39__ {scalar_t__ timedout; TYPE_7__* data; } ;
typedef TYPE_6__ ngx_event_t ;
struct TYPE_40__ {int timedout; int write; int pool; int log; TYPE_5__* data; } ;
typedef TYPE_7__ ngx_connection_t ;
struct TYPE_35__ {scalar_t__ start; scalar_t__ pos; scalar_t__ last; } ;


 int NGX_AGAIN ;


 int NGX_ETIMEDOUT ;




 int NGX_IMAP_NEXT ;


 int NGX_LOG_DEBUG_MAIL ;
 int NGX_LOG_INFO ;

 int NGX_OK ;
 int imap_bye ;
 int imap_invalid_command ;
 int imap_next ;
 int imap_ok ;
 int imap_password ;
 int imap_star ;
 int * ngx_cpymem (int *,int *,scalar_t__) ;






 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_mail_auth (TYPE_5__*,TYPE_7__*) ;
 int ngx_mail_auth_cram_md5 (TYPE_5__*,TYPE_7__*) ;
 int ngx_mail_auth_external (TYPE_5__*,TYPE_7__*,int ) ;
 int ngx_mail_auth_login_password (TYPE_5__*,TYPE_7__*) ;
 int ngx_mail_auth_login_username (TYPE_5__*,TYPE_7__*,int ) ;
 int ngx_mail_auth_plain (TYPE_5__*,TYPE_7__*,int ) ;
 int ngx_mail_close_connection (TYPE_7__*) ;
 int ngx_mail_imap_authenticate (TYPE_5__*,TYPE_7__*) ;
 int ngx_mail_imap_capability (TYPE_5__*,TYPE_7__*) ;
 int ngx_mail_imap_login (TYPE_5__*,TYPE_7__*) ;
 int ngx_mail_imap_starttls (TYPE_5__*,TYPE_7__*) ;
 int ngx_mail_read_command (TYPE_5__*,TYPE_7__*) ;
 int ngx_mail_send (int ) ;
 int ngx_mail_session_internal_server_error (TYPE_5__*) ;
 int ngx_memcpy (int *,int *,scalar_t__) ;
 int * ngx_pnalloc (int ,scalar_t__) ;
 int ngx_str_set (TYPE_8__*,int ) ;

void
ngx_mail_imap_auth_state(ngx_event_t *rev)
{
    u_char *p, *dst, *src, *end;
    ngx_str_t *arg;
    ngx_int_t rc;
    ngx_uint_t tag, i;
    ngx_connection_t *c;
    ngx_mail_session_t *s;

    c = rev->data;
    s = c->data;

    ngx_log_debug0(NGX_LOG_DEBUG_MAIL, c->log, 0, "imap auth state");

    if (rev->timedout) {
        ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        c->timedout = 1;
        ngx_mail_close_connection(c);
        return;
    }

    if (s->out.len) {
        ngx_log_debug0(NGX_LOG_DEBUG_MAIL, c->log, 0, "imap send handler busy");
        s->blocked = 1;
        return;
    }

    s->blocked = 0;

    rc = ngx_mail_read_command(s, c);

    if (rc == NGX_AGAIN || rc == 141) {
        return;
    }

    tag = 1;
    s->text.len = 0;
    ngx_str_set(&s->out, imap_ok);

    if (rc == NGX_OK) {

        ngx_log_debug1(NGX_LOG_DEBUG_MAIL, c->log, 0, "imap auth command: %i",
                       s->command);

        if (s->backslash) {

            arg = s->args.elts;

            for (i = 0; i < s->args.nelts; i++) {
                dst = arg[i].data;
                end = dst + arg[i].len;

                for (src = dst; src < end; dst++) {
                    *dst = *src;
                    if (*src++ == '\\') {
                        *dst = *src++;
                    }
                }

                arg[i].len = dst - arg[i].data;
            }

            s->backslash = 0;
        }

        switch (s->mail_state) {

        case 128:

            switch (s->command) {

            case 138:
                rc = ngx_mail_imap_login(s, c);
                break;

            case 140:
                rc = ngx_mail_imap_authenticate(s, c);
                tag = (rc != NGX_OK);
                break;

            case 139:
                rc = ngx_mail_imap_capability(s, c);
                break;

            case 137:
                s->quit = 1;
                ngx_str_set(&s->text, imap_bye);
                break;

            case 136:
                break;

            case 135:
                rc = ngx_mail_imap_starttls(s, c);
                break;

            default:
                rc = 134;
                break;
            }

            break;

        case 130:
            rc = ngx_mail_auth_login_username(s, c, 0);

            tag = 0;
            ngx_str_set(&s->out, imap_password);
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

    } else if (rc == NGX_IMAP_NEXT) {
        tag = 0;
        ngx_str_set(&s->out, imap_next);
    }

    switch (rc) {

    case 142:
        ngx_mail_auth(s, c);
        return;

    case 141:
        ngx_mail_session_internal_server_error(s);
        return;

    case 134:
        s->state = 0;
        ngx_str_set(&s->out, imap_invalid_command);
        s->mail_state = 128;
        break;
    }

    if (tag) {
        if (s->tag.len == 0) {
            ngx_str_set(&s->tag, imap_star);
        }

        if (s->tagged_line.len < s->tag.len + s->text.len + s->out.len) {
            s->tagged_line.len = s->tag.len + s->text.len + s->out.len;
            s->tagged_line.data = ngx_pnalloc(c->pool, s->tagged_line.len);
            if (s->tagged_line.data == ((void*)0)) {
                ngx_mail_close_connection(c);
                return;
            }
        }

        p = s->tagged_line.data;

        if (s->text.len) {
            p = ngx_cpymem(p, s->text.data, s->text.len);
        }

        p = ngx_cpymem(p, s->tag.data, s->tag.len);
        ngx_memcpy(p, s->out.data, s->out.len);

        s->out.len = s->text.len + s->tag.len + s->out.len;
        s->out.data = s->tagged_line.data;
    }

    if (rc != NGX_IMAP_NEXT) {
        s->args.nelts = 0;

        if (s->state) {

            s->arg_start = s->buffer->start + s->tag.len;
            s->buffer->pos = s->arg_start;
            s->buffer->last = s->arg_start;

        } else {
            s->buffer->pos = s->buffer->start;
            s->buffer->last = s->buffer->start;
            s->tag.len = 0;
        }
    }

    ngx_mail_send(c->write);
}
