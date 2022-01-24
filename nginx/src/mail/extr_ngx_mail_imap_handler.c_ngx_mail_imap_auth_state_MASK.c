#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_8__ ;
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_37__ {int len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ ngx_str_t ;
struct TYPE_41__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct TYPE_36__ {size_t nelts; TYPE_4__* elts; } ;
struct TYPE_34__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct TYPE_38__ {int blocked; int mail_state; int quit; scalar_t__ arg_start; TYPE_8__ tag; TYPE_2__* buffer; scalar_t__ state; TYPE_3__ args; TYPE_1__ tagged_line; TYPE_8__ out; TYPE_8__ text; int /*<<< orphan*/  command; scalar_t__ backslash; } ;
typedef  TYPE_5__ ngx_mail_session_t ;
typedef  int ngx_int_t ;
struct TYPE_39__ {scalar_t__ timedout; TYPE_7__* data; } ;
typedef  TYPE_6__ ngx_event_t ;
struct TYPE_40__ {int timedout; int /*<<< orphan*/  write; int /*<<< orphan*/  pool; int /*<<< orphan*/  log; TYPE_5__* data; } ;
typedef  TYPE_7__ ngx_connection_t ;
struct TYPE_35__ {scalar_t__ start; scalar_t__ pos; scalar_t__ last; } ;

/* Variables and functions */
 int NGX_AGAIN ; 
#define  NGX_DONE 142 
#define  NGX_ERROR 141 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
#define  NGX_IMAP_AUTHENTICATE 140 
#define  NGX_IMAP_CAPABILITY 139 
#define  NGX_IMAP_LOGIN 138 
#define  NGX_IMAP_LOGOUT 137 
 int NGX_IMAP_NEXT ; 
#define  NGX_IMAP_NOOP 136 
#define  NGX_IMAP_STARTTLS 135 
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
#define  NGX_MAIL_PARSE_INVALID_COMMAND 134 
 int NGX_OK ; 
 int /*<<< orphan*/  imap_bye ; 
 int /*<<< orphan*/  imap_invalid_command ; 
 int /*<<< orphan*/  imap_next ; 
 int /*<<< orphan*/  imap_ok ; 
 int /*<<< orphan*/  imap_password ; 
 int /*<<< orphan*/  imap_star ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
#define  ngx_imap_auth_cram_md5 133 
#define  ngx_imap_auth_external 132 
#define  ngx_imap_auth_login_password 131 
#define  ngx_imap_auth_login_username 130 
#define  ngx_imap_auth_plain 129 
#define  ngx_imap_start 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_7__*) ; 
 int FUNC5 (TYPE_5__*,TYPE_7__*) ; 
 int FUNC6 (TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_5__*,TYPE_7__*) ; 
 int FUNC8 (TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int FUNC11 (TYPE_5__*,TYPE_7__*) ; 
 int FUNC12 (TYPE_5__*,TYPE_7__*) ; 
 int FUNC13 (TYPE_5__*,TYPE_7__*) ; 
 int FUNC14 (TYPE_5__*,TYPE_7__*) ; 
 int FUNC15 (TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_8__*,int /*<<< orphan*/ ) ; 

void
FUNC21(ngx_event_t *rev)
{
    u_char              *p, *dst, *src, *end;
    ngx_str_t           *arg;
    ngx_int_t            rc;
    ngx_uint_t           tag, i;
    ngx_connection_t    *c;
    ngx_mail_session_t  *s;

    c = rev->data;
    s = c->data;

    FUNC1(NGX_LOG_DEBUG_MAIL, c->log, 0, "imap auth state");

    if (rev->timedout) {
        FUNC3(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        c->timedout = 1;
        FUNC10(c);
        return;
    }

    if (s->out.len) {
        FUNC1(NGX_LOG_DEBUG_MAIL, c->log, 0, "imap send handler busy");
        s->blocked = 1;
        return;
    }

    s->blocked = 0;

    rc = FUNC15(s, c);

    if (rc == NGX_AGAIN || rc == NGX_ERROR) {
        return;
    }

    tag = 1;
    s->text.len = 0;
    FUNC20(&s->out, imap_ok);

    if (rc == NGX_OK) {

        FUNC2(NGX_LOG_DEBUG_MAIL, c->log, 0, "imap auth command: %i",
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

        case ngx_imap_start:

            switch (s->command) {

            case NGX_IMAP_LOGIN:
                rc = FUNC13(s, c);
                break;

            case NGX_IMAP_AUTHENTICATE:
                rc = FUNC11(s, c);
                tag = (rc != NGX_OK);
                break;

            case NGX_IMAP_CAPABILITY:
                rc = FUNC12(s, c);
                break;

            case NGX_IMAP_LOGOUT:
                s->quit = 1;
                FUNC20(&s->text, imap_bye);
                break;

            case NGX_IMAP_NOOP:
                break;

            case NGX_IMAP_STARTTLS:
                rc = FUNC14(s, c);
                break;

            default:
                rc = NGX_MAIL_PARSE_INVALID_COMMAND;
                break;
            }

            break;

        case ngx_imap_auth_login_username:
            rc = FUNC8(s, c, 0);

            tag = 0;
            FUNC20(&s->out, imap_password);
            s->mail_state = ngx_imap_auth_login_password;

            break;

        case ngx_imap_auth_login_password:
            rc = FUNC7(s, c);
            break;

        case ngx_imap_auth_plain:
            rc = FUNC9(s, c, 0);
            break;

        case ngx_imap_auth_cram_md5:
            rc = FUNC5(s, c);
            break;

        case ngx_imap_auth_external:
            rc = FUNC6(s, c, 0);
            break;
        }

    } else if (rc == NGX_IMAP_NEXT) {
        tag = 0;
        FUNC20(&s->out, imap_next);
    }

    switch (rc) {

    case NGX_DONE:
        FUNC4(s, c);
        return;

    case NGX_ERROR:
        FUNC17(s);
        return;

    case NGX_MAIL_PARSE_INVALID_COMMAND:
        s->state = 0;
        FUNC20(&s->out, imap_invalid_command);
        s->mail_state = ngx_imap_start;
        break;
    }

    if (tag) {
        if (s->tag.len == 0) {
            FUNC20(&s->tag, imap_star);
        }

        if (s->tagged_line.len < s->tag.len + s->text.len + s->out.len) {
            s->tagged_line.len = s->tag.len + s->text.len + s->out.len;
            s->tagged_line.data = FUNC19(c->pool, s->tagged_line.len);
            if (s->tagged_line.data == NULL) {
                FUNC10(c);
                return;
            }
        }

        p = s->tagged_line.data;

        if (s->text.len) {
            p = FUNC0(p, s->text.data, s->text.len);
        }

        p = FUNC0(p, s->tag.data, s->tag.len);
        FUNC18(p, s->out.data, s->out.len);

        s->out.len = s->text.len + s->tag.len + s->out.len;
        s->out.data = s->tagged_line.data;
    }

    if (rc != NGX_IMAP_NEXT) {
        s->args.nelts = 0;

        if (s->state) {
            /* preserve tag */
            s->arg_start = s->buffer->start + s->tag.len;
            s->buffer->pos = s->arg_start;
            s->buffer->last = s->arg_start;

        } else {
            s->buffer->pos = s->buffer->start;
            s->buffer->last = s->buffer->start;
            s->tag.len = 0;
        }
    }

    FUNC16(c->write);
}