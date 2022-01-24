#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_20__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_19__ ;
typedef  struct TYPE_23__   TYPE_18__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_29__ {TYPE_3__* connection; scalar_t__ auto_pushed; } ;
typedef  TYPE_4__ ngx_rtmp_session_t ;
struct TYPE_30__ {char* name; int /*<<< orphan*/  type; } ;
typedef  TYPE_5__ ngx_rtmp_publish_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_dash_frag_t ;
struct TYPE_26__ {int len; char* data; } ;
struct TYPE_24__ {char* data; int len; } ;
struct TYPE_23__ {char* data; int len; } ;
struct TYPE_27__ {int len; char* data; } ;
struct TYPE_31__ {int /*<<< orphan*/  start_time; TYPE_20__ stream; TYPE_19__ playlist_bak; TYPE_18__ playlist; TYPE_2__ name; scalar_t__ id; int /*<<< orphan*/ * frags; scalar_t__ opened; } ;
typedef  TYPE_6__ ngx_rtmp_dash_ctx_t ;
struct TYPE_25__ {int len; char* data; } ;
struct TYPE_32__ {int winfrags; scalar_t__ nested; TYPE_1__ path; int /*<<< orphan*/  dash; } ;
typedef  TYPE_7__ ngx_rtmp_dash_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_28__ {int /*<<< orphan*/  log; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int NGX_INT32_LEN ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_5__*) ; 
 char* FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_18__*,TYPE_19__*,TYPE_20__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_rtmp_dash_module ; 
 TYPE_7__* FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static ngx_int_t
FUNC16(ngx_rtmp_session_t *s, ngx_rtmp_publish_t *v)
{
    u_char                    *p;
    size_t                     len;
    ngx_rtmp_dash_ctx_t       *ctx;
    ngx_rtmp_dash_frag_t      *f;
    ngx_rtmp_dash_app_conf_t  *dacf;

    dacf = FUNC10(s, ngx_rtmp_dash_module);
    if (dacf == NULL || !dacf->dash || dacf->path.len == 0) {
        goto next;
    }

    if (s->auto_pushed) {
        goto next;
    }

    FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "dash: publish: name='%s' type='%s'", v->name, v->type);

    ctx = FUNC11(s, ngx_rtmp_dash_module);

    if (ctx == NULL) {
        ctx = FUNC8(s->connection->pool, sizeof(ngx_rtmp_dash_ctx_t));
        if (ctx == NULL) {
            goto next;
        }
        FUNC12(s, ctx, ngx_rtmp_dash_module);

    } else {
        if (ctx->opened) {
            goto next;
        }

        f = ctx->frags;
        FUNC6(ctx, sizeof(ngx_rtmp_dash_ctx_t));
        ctx->frags = f;
    }

    if (ctx->frags == NULL) {
        ctx->frags = FUNC8(s->connection->pool,
                                 sizeof(ngx_rtmp_dash_frag_t) *
                                 (dacf->winfrags * 2 + 1));
        if (ctx->frags == NULL) {
            return NGX_ERROR;
        }
    }

    ctx->id = 0;

    if (FUNC14(v->name, "..")) {
        FUNC4(NGX_LOG_ERR, s->connection->log, 0,
                      "dash: bad stream name: '%s'", v->name);
        return NGX_ERROR;
    }

    ctx->name.len = FUNC13(v->name);
    ctx->name.data = FUNC7(s->connection->pool, ctx->name.len + 1);

    if (ctx->name.data == NULL) {
        return NGX_ERROR;
    }

    *FUNC1(ctx->name.data, v->name, ctx->name.len) = 0;

    len = dacf->path.len + 1 + ctx->name.len + sizeof(".mpd");
    if (dacf->nested) {
        len += sizeof("/index") - 1;
    }

    ctx->playlist.data = FUNC7(s->connection->pool, len);
    p = FUNC1(ctx->playlist.data, dacf->path.data, dacf->path.len);

    if (p[-1] != '/') {
        *p++ = '/';
    }

    p = FUNC1(p, ctx->name.data, ctx->name.len);

    /*
     * ctx->stream holds initial part of stream file path
     * however the space for the whole stream path
     * is allocated
     */

    ctx->stream.len = p - ctx->playlist.data + 1;
    ctx->stream.data = FUNC7(s->connection->pool,
                                  ctx->stream.len + NGX_INT32_LEN +
                                  sizeof(".m4x"));

    FUNC5(ctx->stream.data, ctx->playlist.data, ctx->stream.len - 1);
    ctx->stream.data[ctx->stream.len - 1] = (dacf->nested ? '/' : '-');

    if (dacf->nested) {
        p = FUNC1(p, "/index.mpd", sizeof("/index.mpd") - 1);
    } else {
        p = FUNC1(p, ".mpd", sizeof(".mpd") - 1);
    }

    ctx->playlist.len = p - ctx->playlist.data;

    *p = 0;

    /* playlist bak (new playlist) path */

    ctx->playlist_bak.data = FUNC7(s->connection->pool,
                                        ctx->playlist.len + sizeof(".bak"));
    p = FUNC1(ctx->playlist_bak.data, ctx->playlist.data,
                   ctx->playlist.len);
    p = FUNC1(p, ".bak", sizeof(".bak") - 1);

    ctx->playlist_bak.len = p - ctx->playlist_bak.data;

    *p = 0;

    FUNC3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "dash: playlist='%V' playlist_bak='%V' stream_pattern='%V'",
                   &ctx->playlist, &ctx->playlist_bak, &ctx->stream);

    ctx->start_time = FUNC15();

    if (FUNC9(s) != NGX_OK) {
        return NGX_ERROR;
    }

next:
    return FUNC0(s, v);
}