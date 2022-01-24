#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_48__   TYPE_9__ ;
typedef  struct TYPE_47__   TYPE_8__ ;
typedef  struct TYPE_46__   TYPE_7__ ;
typedef  struct TYPE_45__   TYPE_6__ ;
typedef  struct TYPE_44__   TYPE_5__ ;
typedef  struct TYPE_43__   TYPE_4__ ;
typedef  struct TYPE_42__   TYPE_3__ ;
typedef  struct TYPE_41__   TYPE_2__ ;
typedef  struct TYPE_40__   TYPE_28__ ;
typedef  struct TYPE_39__   TYPE_27__ ;
typedef  struct TYPE_38__   TYPE_26__ ;
typedef  struct TYPE_37__   TYPE_25__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_14__ ;
typedef  struct TYPE_34__   TYPE_13__ ;
typedef  struct TYPE_33__   TYPE_12__ ;
typedef  struct TYPE_32__   TYPE_11__ ;
typedef  struct TYPE_31__   TYPE_10__ ;

/* Type definitions */
typedef  char u_char ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_48__ {TYPE_8__* connection; scalar_t__ auto_pushed; } ;
typedef  TYPE_9__ ngx_rtmp_session_t ;
struct TYPE_31__ {char* name; int /*<<< orphan*/  type; } ;
typedef  TYPE_10__ ngx_rtmp_publish_t ;
struct TYPE_41__ {size_t len; int /*<<< orphan*/  data; } ;
struct TYPE_32__ {TYPE_2__ suffix; } ;
typedef  TYPE_11__ ngx_rtmp_hls_variant_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_hls_frag_t ;
struct TYPE_40__ {char* data; int len; } ;
struct TYPE_39__ {int len; char* data; } ;
struct TYPE_38__ {char* data; int len; } ;
struct TYPE_37__ {char* data; int len; } ;
struct TYPE_45__ {int len; char* data; } ;
struct TYPE_43__ {int len; char* data; } ;
struct TYPE_42__ {int len; char* data; } ;
struct TYPE_33__ {TYPE_28__ keyfile; TYPE_27__ stream; TYPE_26__ playlist_bak; TYPE_25__ playlist; TYPE_6__ name; TYPE_4__ var_playlist; TYPE_3__ var_playlist_bak; TYPE_11__* var; int /*<<< orphan*/ * frags; TYPE_14__* aframe; } ;
typedef  TYPE_12__ ngx_rtmp_hls_ctx_t ;
struct TYPE_44__ {int len; char* data; } ;
struct TYPE_46__ {int len; char* data; } ;
struct TYPE_34__ {int winfrags; scalar_t__ continuous; scalar_t__ nested; TYPE_5__ key_path; scalar_t__ keys; TYPE_1__* variant; TYPE_7__ path; int /*<<< orphan*/  hls; } ;
typedef  TYPE_13__ ngx_rtmp_hls_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_35__ {int /*<<< orphan*/  start; int /*<<< orphan*/  last; int /*<<< orphan*/  pos; } ;
typedef  TYPE_14__ ngx_buf_t ;
struct TYPE_47__ {int /*<<< orphan*/  log; int /*<<< orphan*/  pool; } ;
struct TYPE_36__ {scalar_t__ nelts; TYPE_11__* elts; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int NGX_INT64_LEN ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,TYPE_10__*) ; 
 char* FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_25__*,TYPE_26__*,TYPE_27__*,TYPE_28__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_12__*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int) ; 
 TYPE_13__* FUNC10 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 TYPE_12__* FUNC11 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_hls_module ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_9__*,TYPE_12__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (char*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC16(ngx_rtmp_session_t *s, ngx_rtmp_publish_t *v)
{
    ngx_rtmp_hls_app_conf_t        *hacf;
    ngx_rtmp_hls_ctx_t             *ctx;
    u_char                         *p, *pp;
    ngx_rtmp_hls_frag_t            *f;
    ngx_buf_t                      *b;
    size_t                          len;
    ngx_rtmp_hls_variant_t         *var;
    ngx_uint_t                      n;

    hacf = FUNC10(s, ngx_rtmp_hls_module);
    if (hacf == NULL || !hacf->hls || hacf->path.len == 0) {
        goto next;
    }

    if (s->auto_pushed) {
        goto next;
    }

    FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "hls: publish: name='%s' type='%s'",
                   v->name, v->type);

    ctx = FUNC11(s, ngx_rtmp_hls_module);

    if (ctx == NULL) {

        ctx = FUNC9(s->connection->pool, sizeof(ngx_rtmp_hls_ctx_t));
        FUNC13(s, ctx, ngx_rtmp_hls_module);

    } else {

        f = ctx->frags;
        b = ctx->aframe;

        FUNC7(ctx, sizeof(ngx_rtmp_hls_ctx_t));

        ctx->frags = f;
        ctx->aframe = b;

        if (b) {
            b->pos = b->last = b->start;
        }
    }

    if (ctx->frags == NULL) {
        ctx->frags = FUNC9(s->connection->pool,
                                 sizeof(ngx_rtmp_hls_frag_t) *
                                 (hacf->winfrags * 2 + 1));
        if (ctx->frags == NULL) {
            return NGX_ERROR;
        }
    }

    if (FUNC15(v->name, "..")) {
        FUNC4(NGX_LOG_ERR, s->connection->log, 0,
                      "hls: bad stream name: '%s'", v->name);
        return NGX_ERROR;
    }

    ctx->name.len = FUNC14(v->name);
    ctx->name.data = FUNC8(s->connection->pool, ctx->name.len + 1);

    if (ctx->name.data == NULL) {
        return NGX_ERROR;
    }

    *FUNC1(ctx->name.data, v->name, ctx->name.len) = 0;

    len = hacf->path.len + 1 + ctx->name.len + sizeof(".m3u8");
    if (hacf->nested) {
        len += sizeof("/index") - 1;
    }

    ctx->playlist.data = FUNC8(s->connection->pool, len);
    p = FUNC1(ctx->playlist.data, hacf->path.data, hacf->path.len);

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
    ctx->stream.data = FUNC8(s->connection->pool,
                                  ctx->stream.len + NGX_INT64_LEN +
                                  sizeof(".ts"));

    FUNC6(ctx->stream.data, ctx->playlist.data, ctx->stream.len - 1);
    ctx->stream.data[ctx->stream.len - 1] = (hacf->nested ? '/' : '-');

    /* varint playlist path */

    if (hacf->variant) {
        var = hacf->variant->elts;
        for (n = 0; n < hacf->variant->nelts; n++, var++) {
            if (ctx->name.len > var->suffix.len &&
                FUNC5(var->suffix.data,
                           ctx->name.data + ctx->name.len - var->suffix.len,
                           var->suffix.len)
                == 0)
            {
                ctx->var = var;

                len = (size_t) (p - ctx->playlist.data);

                ctx->var_playlist.len = len - var->suffix.len + sizeof(".m3u8")
                                        - 1;
                ctx->var_playlist.data = FUNC8(s->connection->pool,
                                                    ctx->var_playlist.len + 1);

                pp = FUNC1(ctx->var_playlist.data, ctx->playlist.data,
                               len - var->suffix.len);
                pp = FUNC1(pp, ".m3u8", sizeof(".m3u8") - 1);
                *pp = 0;

                ctx->var_playlist_bak.len = ctx->var_playlist.len +
                                            sizeof(".bak") - 1;
                ctx->var_playlist_bak.data = FUNC8(s->connection->pool,
                                                 ctx->var_playlist_bak.len + 1);

                pp = FUNC1(ctx->var_playlist_bak.data,
                                ctx->var_playlist.data,
                                ctx->var_playlist.len);
                pp = FUNC1(pp, ".bak", sizeof(".bak") - 1);
                *pp = 0;

                break;
            }
        }
    }


    /* playlist path */

    if (hacf->nested) {
        p = FUNC1(p, "/index.m3u8", sizeof("/index.m3u8") - 1);
    } else {
        p = FUNC1(p, ".m3u8", sizeof(".m3u8") - 1);
    }

    ctx->playlist.len = p - ctx->playlist.data;

    *p = 0;

    /* playlist bak (new playlist) path */

    ctx->playlist_bak.data = FUNC8(s->connection->pool,
                                        ctx->playlist.len + sizeof(".bak"));
    p = FUNC1(ctx->playlist_bak.data, ctx->playlist.data,
                   ctx->playlist.len);
    p = FUNC1(p, ".bak", sizeof(".bak") - 1);

    ctx->playlist_bak.len = p - ctx->playlist_bak.data;

    *p = 0;

    /* key path */

    if (hacf->keys) {
        len = hacf->key_path.len + 1 + ctx->name.len + 1 + NGX_INT64_LEN
              + sizeof(".key");

        ctx->keyfile.data = FUNC8(s->connection->pool, len);
        if (ctx->keyfile.data == NULL) {
            return NGX_ERROR;
        }

        p = FUNC1(ctx->keyfile.data, hacf->key_path.data,
                       hacf->key_path.len);

        if (p[-1] != '/') {
            *p++ = '/';
        }

        p = FUNC1(p, ctx->name.data, ctx->name.len);
        *p++ = (hacf->nested ? '/' : '-');

        ctx->keyfile.len = p - ctx->keyfile.data;
    }

    FUNC3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "hls: playlist='%V' playlist_bak='%V' "
                   "stream_pattern='%V' keyfile_pattern='%V'",
                   &ctx->playlist, &ctx->playlist_bak,
                   &ctx->stream, &ctx->keyfile);

    if (hacf->continuous) {
        FUNC12(s);
    }

next:
    return FUNC0(s, v);
}