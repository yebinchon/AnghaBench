
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_20__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_19__ ;
typedef struct TYPE_23__ TYPE_18__ ;


typedef char u_char ;
struct TYPE_29__ {TYPE_3__* connection; scalar_t__ auto_pushed; } ;
typedef TYPE_4__ ngx_rtmp_session_t ;
struct TYPE_30__ {char* name; int type; } ;
typedef TYPE_5__ ngx_rtmp_publish_t ;
typedef int ngx_rtmp_dash_frag_t ;
struct TYPE_26__ {int len; char* data; } ;
struct TYPE_24__ {char* data; int len; } ;
struct TYPE_23__ {char* data; int len; } ;
struct TYPE_27__ {int len; char* data; } ;
struct TYPE_31__ {int start_time; TYPE_20__ stream; TYPE_19__ playlist_bak; TYPE_18__ playlist; TYPE_2__ name; scalar_t__ id; int * frags; scalar_t__ opened; } ;
typedef TYPE_6__ ngx_rtmp_dash_ctx_t ;
struct TYPE_25__ {int len; char* data; } ;
struct TYPE_32__ {int winfrags; scalar_t__ nested; TYPE_1__ path; int dash; } ;
typedef TYPE_7__ ngx_rtmp_dash_app_conf_t ;
typedef int ngx_int_t ;
struct TYPE_28__ {int log; int pool; } ;


 int NGX_ERROR ;
 int NGX_INT32_LEN ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int next_publish (TYPE_4__*,TYPE_5__*) ;
 char* ngx_cpymem (char*,char*,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,char*,int ) ;
 int ngx_log_debug3 (int ,int ,int ,char*,TYPE_18__*,TYPE_19__*,TYPE_20__*) ;
 int ngx_log_error (int ,int ,int ,char*,char*) ;
 int ngx_memcpy (char*,char*,int) ;
 int ngx_memzero (TYPE_6__*,int) ;
 void* ngx_palloc (int ,int) ;
 void* ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_rtmp_dash_ensure_directory (TYPE_4__*) ;
 int ngx_rtmp_dash_module ;
 TYPE_7__* ngx_rtmp_get_module_app_conf (TYPE_4__*,int ) ;
 TYPE_6__* ngx_rtmp_get_module_ctx (TYPE_4__*,int ) ;
 int ngx_rtmp_set_ctx (TYPE_4__*,TYPE_6__*,int ) ;
 int ngx_strlen (char*) ;
 scalar_t__ ngx_strstr (char*,char*) ;
 int ngx_time () ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_dash_publish(ngx_rtmp_session_t *s, ngx_rtmp_publish_t *v)
{
    u_char *p;
    size_t len;
    ngx_rtmp_dash_ctx_t *ctx;
    ngx_rtmp_dash_frag_t *f;
    ngx_rtmp_dash_app_conf_t *dacf;

    dacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_dash_module);
    if (dacf == ((void*)0) || !dacf->dash || dacf->path.len == 0) {
        goto next;
    }

    if (s->auto_pushed) {
        goto next;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "dash: publish: name='%s' type='%s'", v->name, v->type);

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_dash_module);

    if (ctx == ((void*)0)) {
        ctx = ngx_pcalloc(s->connection->pool, sizeof(ngx_rtmp_dash_ctx_t));
        if (ctx == ((void*)0)) {
            goto next;
        }
        ngx_rtmp_set_ctx(s, ctx, ngx_rtmp_dash_module);

    } else {
        if (ctx->opened) {
            goto next;
        }

        f = ctx->frags;
        ngx_memzero(ctx, sizeof(ngx_rtmp_dash_ctx_t));
        ctx->frags = f;
    }

    if (ctx->frags == ((void*)0)) {
        ctx->frags = ngx_pcalloc(s->connection->pool,
                                 sizeof(ngx_rtmp_dash_frag_t) *
                                 (dacf->winfrags * 2 + 1));
        if (ctx->frags == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    ctx->id = 0;

    if (ngx_strstr(v->name, "..")) {
        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                      "dash: bad stream name: '%s'", v->name);
        return NGX_ERROR;
    }

    ctx->name.len = ngx_strlen(v->name);
    ctx->name.data = ngx_palloc(s->connection->pool, ctx->name.len + 1);

    if (ctx->name.data == ((void*)0)) {
        return NGX_ERROR;
    }

    *ngx_cpymem(ctx->name.data, v->name, ctx->name.len) = 0;

    len = dacf->path.len + 1 + ctx->name.len + sizeof(".mpd");
    if (dacf->nested) {
        len += sizeof("/index") - 1;
    }

    ctx->playlist.data = ngx_palloc(s->connection->pool, len);
    p = ngx_cpymem(ctx->playlist.data, dacf->path.data, dacf->path.len);

    if (p[-1] != '/') {
        *p++ = '/';
    }

    p = ngx_cpymem(p, ctx->name.data, ctx->name.len);







    ctx->stream.len = p - ctx->playlist.data + 1;
    ctx->stream.data = ngx_palloc(s->connection->pool,
                                  ctx->stream.len + NGX_INT32_LEN +
                                  sizeof(".m4x"));

    ngx_memcpy(ctx->stream.data, ctx->playlist.data, ctx->stream.len - 1);
    ctx->stream.data[ctx->stream.len - 1] = (dacf->nested ? '/' : '-');

    if (dacf->nested) {
        p = ngx_cpymem(p, "/index.mpd", sizeof("/index.mpd") - 1);
    } else {
        p = ngx_cpymem(p, ".mpd", sizeof(".mpd") - 1);
    }

    ctx->playlist.len = p - ctx->playlist.data;

    *p = 0;



    ctx->playlist_bak.data = ngx_palloc(s->connection->pool,
                                        ctx->playlist.len + sizeof(".bak"));
    p = ngx_cpymem(ctx->playlist_bak.data, ctx->playlist.data,
                   ctx->playlist.len);
    p = ngx_cpymem(p, ".bak", sizeof(".bak") - 1);

    ctx->playlist_bak.len = p - ctx->playlist_bak.data;

    *p = 0;

    ngx_log_debug3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "dash: playlist='%V' playlist_bak='%V' stream_pattern='%V'",
                   &ctx->playlist, &ctx->playlist_bak, &ctx->stream);

    ctx->start_time = ngx_time();

    if (ngx_rtmp_dash_ensure_directory(s) != NGX_OK) {
        return NGX_ERROR;
    }

next:
    return next_publish(s, v);
}
