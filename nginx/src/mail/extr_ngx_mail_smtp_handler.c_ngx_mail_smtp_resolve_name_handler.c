
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_12__ {int len; int * data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_13__ {scalar_t__ state; size_t naddrs; TYPE_1__* addrs; int name; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_resolver_ctx_t ;
struct TYPE_14__ {void* host; TYPE_5__* connection; } ;
typedef TYPE_4__ ngx_mail_session_t ;
struct TYPE_15__ {int socklen; int sockaddr; int log; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_11__ {int socklen; int sockaddr; } ;


 int NGX_LOG_DEBUG_MAIL ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ NGX_RESOLVE_NXDOMAIN ;
 int NGX_SOCKADDR_STRLEN ;
 scalar_t__ ngx_cmp_sockaddr (int ,int ,int ,int ,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_2__*) ;
 int ngx_log_error (int ,int ,int ,char*,int *,scalar_t__,int ) ;
 int ngx_mail_smtp_greeting (TYPE_4__*,TYPE_5__*) ;
 int ngx_resolve_name_done (TYPE_3__*) ;
 int ngx_resolver_strerror (scalar_t__) ;
 int ngx_sock_ntop (int ,int ,int *,int,int ) ;
 void* smtp_tempunavail ;
 void* smtp_unavailable ;

__attribute__((used)) static void
ngx_mail_smtp_resolve_name_handler(ngx_resolver_ctx_t *ctx)
{
    ngx_uint_t i;
    ngx_connection_t *c;
    ngx_mail_session_t *s;

    s = ctx->data;
    c = s->connection;

    if (ctx->state) {
        ngx_log_error(NGX_LOG_ERR, c->log, 0,
                      "\"%V\" could not be resolved (%i: %s)",
                      &ctx->name, ctx->state,
                      ngx_resolver_strerror(ctx->state));

        if (ctx->state == NGX_RESOLVE_NXDOMAIN) {
            s->host = smtp_unavailable;

        } else {
            s->host = smtp_tempunavail;
        }

    } else {
        for (i = 0; i < ctx->naddrs; i++) {
            if (ngx_cmp_sockaddr(ctx->addrs[i].sockaddr, ctx->addrs[i].socklen,
                                 c->sockaddr, c->socklen, 0)
                == NGX_OK)
            {
                goto found;
            }
        }

        s->host = smtp_unavailable;
    }

found:

    ngx_resolve_name_done(ctx);

    ngx_mail_smtp_greeting(s, c);
}
