
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_11__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_12__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_13__ {int publishing; TYPE_3__* session; } ;
typedef TYPE_4__ ngx_rtmp_live_ctx_t ;
struct TYPE_14__ {int filter; int sessions; } ;
typedef TYPE_5__ ngx_rtmp_control_ctx_t ;
typedef int ngx_http_request_t ;
struct TYPE_10__ {scalar_t__ number; TYPE_2__ addr_text; } ;


 char const* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;



 TYPE_3__** ngx_array_push (int *) ;
 scalar_t__ ngx_atoi (int ,scalar_t__) ;
 scalar_t__ ngx_http_arg (int *,int *,int,TYPE_2__*) ;
 TYPE_5__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_rtmp_control_module ;
 scalar_t__ ngx_strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static const char *
ngx_rtmp_control_walk_session(ngx_http_request_t *r,
    ngx_rtmp_live_ctx_t *lctx)
{
    ngx_str_t addr, *paddr, clientid;
    ngx_rtmp_session_t *s, **ss;
    ngx_rtmp_control_ctx_t *ctx;

    s = lctx->session;

    if (s == ((void*)0) || s->connection == ((void*)0)) {
        return NGX_CONF_OK;
    }

    if (ngx_http_arg(r, (u_char *) "addr", sizeof("addr") - 1, &addr)
        == NGX_OK)
    {
        paddr = &s->connection->addr_text;
        if (paddr->len != addr.len ||
            ngx_strncmp(paddr->data, addr.data, addr.len))
        {
            return NGX_CONF_OK;
        }
    }

    if (ngx_http_arg(r, (u_char *) "clientid", sizeof("clientid") - 1,
                     &clientid)
        == NGX_OK)
    {
        if (s->connection->number !=
            (ngx_uint_t) ngx_atoi(clientid.data, clientid.len))
        {
            return NGX_CONF_OK;
        }
    }

    ctx = ngx_http_get_module_ctx(r, ngx_rtmp_control_module);

    switch (ctx->filter) {
        case 129:
            if (!lctx->publishing) {
                return NGX_CONF_OK;
            }
            break;

        case 128:
            if (lctx->publishing) {
                return NGX_CONF_OK;
            }
            break;

        case 130:
            break;
    }

    ss = ngx_array_push(&ctx->sessions);
    if (ss == ((void*)0)) {
        return "allocation error";
    }

    *ss = s;

    return NGX_CONF_OK;
}
