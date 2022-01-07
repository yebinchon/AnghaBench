
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {int socklen; TYPE_2__* sockaddr; } ;
struct TYPE_22__ {int timeout; TYPE_6__* data; int handler; TYPE_3__ addr; } ;
typedef TYPE_5__ ngx_resolver_ctx_t ;
struct TYPE_23__ {TYPE_5__* resolver_ctx; int host; } ;
typedef TYPE_6__ ngx_mail_session_t ;
struct TYPE_24__ {int resolver_timeout; int * resolver; } ;
typedef TYPE_7__ ngx_mail_core_srv_conf_t ;
struct TYPE_25__ {TYPE_4__* read; int socklen; TYPE_2__* sockaddr; TYPE_1__* log; } ;
typedef TYPE_8__ ngx_connection_t ;
struct TYPE_21__ {int handler; } ;
struct TYPE_19__ {scalar_t__ sa_family; } ;
struct TYPE_18__ {char* action; } ;


 scalar_t__ AF_UNIX ;
 scalar_t__ NGX_OK ;
 int ngx_mail_close_connection (TYPE_8__*) ;
 int ngx_mail_core_module ;
 TYPE_7__* ngx_mail_get_module_srv_conf (TYPE_6__*,int ) ;
 int ngx_mail_smtp_block_reading ;
 int ngx_mail_smtp_greeting (TYPE_6__*,TYPE_8__*) ;
 int ngx_mail_smtp_resolve_addr_handler ;
 scalar_t__ ngx_resolve_addr (TYPE_5__*) ;
 TYPE_5__* ngx_resolve_start (int *,int *) ;
 int smtp_tempunavail ;
 int smtp_unavailable ;

void
ngx_mail_smtp_init_session(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_resolver_ctx_t *ctx;
    ngx_mail_core_srv_conf_t *cscf;

    cscf = ngx_mail_get_module_srv_conf(s, ngx_mail_core_module);

    if (cscf->resolver == ((void*)0)) {
        s->host = smtp_unavailable;
        ngx_mail_smtp_greeting(s, c);
        return;
    }
    c->log->action = "in resolving client address";

    ctx = ngx_resolve_start(cscf->resolver, ((void*)0));
    if (ctx == ((void*)0)) {
        ngx_mail_close_connection(c);
        return;
    }

    ctx->addr.sockaddr = c->sockaddr;
    ctx->addr.socklen = c->socklen;
    ctx->handler = ngx_mail_smtp_resolve_addr_handler;
    ctx->data = s;
    ctx->timeout = cscf->resolver_timeout;

    s->resolver_ctx = ctx;
    c->read->handler = ngx_mail_smtp_block_reading;

    if (ngx_resolve_addr(ctx) != NGX_OK) {
        ngx_mail_close_connection(c);
    }
}
