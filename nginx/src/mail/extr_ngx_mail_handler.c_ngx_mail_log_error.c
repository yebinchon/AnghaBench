
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_11__ {TYPE_2__* proxy; TYPE_3__ login; int addr_text; scalar_t__ starttls; } ;
typedef TYPE_4__ ngx_mail_session_t ;
struct TYPE_12__ {TYPE_4__* session; TYPE_3__* client; } ;
typedef TYPE_5__ ngx_mail_log_ctx_t ;
struct TYPE_13__ {TYPE_5__* data; TYPE_3__* action; } ;
typedef TYPE_6__ ngx_log_t ;
struct TYPE_8__ {TYPE_3__* name; } ;
struct TYPE_9__ {TYPE_1__ upstream; } ;


 int * ngx_snprintf (int *,size_t,char*,...) ;

u_char *
ngx_mail_log_error(ngx_log_t *log, u_char *buf, size_t len)
{
    u_char *p;
    ngx_mail_session_t *s;
    ngx_mail_log_ctx_t *ctx;

    if (log->action) {
        p = ngx_snprintf(buf, len, " while %s", log->action);
        len -= p - buf;
        buf = p;
    }

    ctx = log->data;

    p = ngx_snprintf(buf, len, ", client: %V", ctx->client);
    len -= p - buf;
    buf = p;

    s = ctx->session;

    if (s == ((void*)0)) {
        return p;
    }

    p = ngx_snprintf(buf, len, "%s, server: %V",
                     s->starttls ? " using starttls" : "",
                     s->addr_text);
    len -= p - buf;
    buf = p;

    if (s->login.len == 0) {
        return p;
    }

    p = ngx_snprintf(buf, len, ", login: \"%V\"", &s->login);
    len -= p - buf;
    buf = p;

    if (s->proxy == ((void*)0)) {
        return p;
    }

    p = ngx_snprintf(buf, len, ", upstream: %V", s->proxy->upstream.name);

    return p;
}
