
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_12__ {int joined; struct TYPE_12__* next; int name; } ;
typedef TYPE_3__ ngx_rtmp_play_ctx_t ;
struct TYPE_13__ {size_t nbuckets; TYPE_3__** ctx; } ;
typedef TYPE_4__ ngx_rtmp_play_app_conf_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int NGX_RTMP_MAX_NAME ;
 size_t ngx_hash_key (int ,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_4__* ngx_rtmp_get_module_app_conf (TYPE_2__*,int ) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_play_module ;
 int ngx_strlen (int ) ;
 int ngx_strncmp (int ,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_join(ngx_rtmp_session_t *s)
{
    ngx_rtmp_play_ctx_t *ctx, **pctx;
    ngx_rtmp_play_app_conf_t *pacf;
    ngx_uint_t h;

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: join");

    pacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_play_module);

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);
    if (ctx == ((void*)0) || ctx->joined) {
        return NGX_ERROR;
    }

    h = ngx_hash_key(ctx->name, ngx_strlen(ctx->name));
    pctx = &pacf->ctx[h % pacf->nbuckets];

    while (*pctx) {
        if (!ngx_strncmp((*pctx)->name, ctx->name, NGX_RTMP_MAX_NAME)) {
            break;
        }
        pctx = &(*pctx)->next;
    }

    ctx->next = *pctx;
    *pctx = ctx;
    ctx->joined = 1;

    return NGX_OK;
}
