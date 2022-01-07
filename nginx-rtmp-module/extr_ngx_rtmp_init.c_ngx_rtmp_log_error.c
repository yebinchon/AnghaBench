
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {scalar_t__ addr_text; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
struct TYPE_6__ {TYPE_1__* session; scalar_t__ client; } ;
typedef TYPE_2__ ngx_rtmp_error_log_ctx_t ;
struct TYPE_7__ {TYPE_2__* data; scalar_t__ action; } ;
typedef TYPE_3__ ngx_log_t ;


 int * ngx_snprintf (int *,size_t,char*,scalar_t__) ;

__attribute__((used)) static u_char *
ngx_rtmp_log_error(ngx_log_t *log, u_char *buf, size_t len)
{
    u_char *p;
    ngx_rtmp_session_t *s;
    ngx_rtmp_error_log_ctx_t *ctx;

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

    p = ngx_snprintf(buf, len, ", server: %V", s->addr_text);
    len -= p - buf;
    buf = p;

    return p;
}
