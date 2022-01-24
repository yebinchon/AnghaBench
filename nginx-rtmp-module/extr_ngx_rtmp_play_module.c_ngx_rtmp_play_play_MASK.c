#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_11__ ;
typedef  struct TYPE_28__   TYPE_10__ ;

/* Type definitions */
typedef  char u_char ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_34__ {scalar_t__ len; char* data; } ;
typedef  TYPE_5__ ngx_str_t ;
struct TYPE_35__ {TYPE_4__* connection; } ;
typedef  TYPE_6__ ngx_rtmp_session_t ;
struct TYPE_36__ {char* name; int /*<<< orphan*/  args; scalar_t__ start; } ;
typedef  TYPE_7__ ngx_rtmp_play_t ;
struct TYPE_31__ {scalar_t__ nelts; TYPE_9__** elts; } ;
struct TYPE_37__ {TYPE_2__ fmts; } ;
typedef  TYPE_8__ ngx_rtmp_play_main_conf_t ;
struct TYPE_38__ {int /*<<< orphan*/  name; TYPE_5__ sfx; TYPE_5__ pfx; } ;
typedef  TYPE_9__ ngx_rtmp_play_fmt_t ;
struct TYPE_32__ {scalar_t__ fd; int /*<<< orphan*/  log; } ;
struct TYPE_28__ {scalar_t__ pfx_size; TYPE_9__* fmt; TYPE_5__ sfx; void* post_seek; void* nentry; TYPE_3__ file; int /*<<< orphan*/  name; void* vindex; void* aindex; TYPE_6__* session; } ;
typedef  TYPE_10__ ngx_rtmp_play_ctx_t ;
struct TYPE_30__ {scalar_t__ nelts; } ;
struct TYPE_29__ {TYPE_1__ entries; } ;
typedef  TYPE_11__ ngx_rtmp_play_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_33__ {int /*<<< orphan*/  log; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 void* NGX_CONF_UNSET_UINT ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__ NGX_INVALID_FILE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/  NGX_RTMP_MAX_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int) ; 
 TYPE_10__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char) ; 
 TYPE_11__* FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC9 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_play_module ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_7__*) ; 
 void* FUNC11 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,TYPE_10__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,char*,scalar_t__) ; 

__attribute__((used)) static ngx_int_t
FUNC15(ngx_rtmp_session_t *s, ngx_rtmp_play_t *v)
{
    ngx_rtmp_play_main_conf_t      *pmcf;
    ngx_rtmp_play_app_conf_t       *pacf;
    ngx_rtmp_play_ctx_t            *ctx;
    u_char                         *p;
    ngx_rtmp_play_fmt_t            *fmt, **pfmt;
    ngx_str_t                      *pfx, *sfx;
    ngx_str_t                       name;
    ngx_uint_t                      n;

    pmcf = FUNC9(s, ngx_rtmp_play_module);

    pacf = FUNC7(s, ngx_rtmp_play_module);

    if (pacf == NULL || pacf->entries.nelts == 0) {
        goto next;
    }

    FUNC2(NGX_LOG_INFO, s->connection->log, 0,
                  "play: play name='%s' timestamp=%i",
                  v->name, (ngx_int_t) v->start);

    ctx = FUNC8(s, ngx_rtmp_play_module);

    if (ctx && ctx->file.fd != NGX_INVALID_FILE) {
        FUNC2(NGX_LOG_ERR, s->connection->log, 0,
                     "play: already playing");
        goto next;
    }

    /* check for double-dot in v->name;
     * we should not move out of play directory */
    for (p = v->name; *p; ++p) {
        if (FUNC6(p[0]) &&
            p[1] == '.' && p[2] == '.' &&
            FUNC6(p[3]))
        {
            FUNC2(NGX_LOG_ERR, s->connection->log, 0,
                         "play: bad name '%s'", v->name);
            return NGX_ERROR;
        }
    }

    if (ctx == NULL) {
        ctx = FUNC5(s->connection->pool, sizeof(ngx_rtmp_play_ctx_t));
        FUNC12(s, ctx, ngx_rtmp_play_module);
    }

    FUNC4(ctx, sizeof(*ctx));

    ctx->session = s;
    ctx->aindex = FUNC11('a', v->args);
    ctx->vindex = FUNC11('v', v->args);

    ctx->file.log = s->connection->log;

    FUNC3(ctx->name, v->name, NGX_RTMP_MAX_NAME);

    name.len = FUNC13(v->name);
    name.data = v->name;

    pfmt = pmcf->fmts.elts;

    for (n = 0; n < pmcf->fmts.nelts; ++n, ++pfmt) {
        fmt = *pfmt;

        pfx = &fmt->pfx;
        sfx = &fmt->sfx;

        if (pfx->len == 0 && ctx->fmt == NULL) {
            ctx->fmt = fmt;
        }

        if (pfx->len && name.len >= pfx->len &&
            FUNC14(pfx->data, name.data, pfx->len) == 0)
        {
            ctx->pfx_size = pfx->len;
            ctx->fmt = fmt;

            break;
        }

        if (name.len >= sfx->len &&
            FUNC14(sfx->data, name.data + name.len - sfx->len,
                            sfx->len) == 0)
        {
            ctx->fmt = fmt;
        }
    }

    if (ctx->fmt == NULL) {
        FUNC2(NGX_LOG_ERR, s->connection->log, 0,
                      "play: fmt not found");
        goto next;
    }

    ctx->file.fd = NGX_INVALID_FILE;
    ctx->nentry = NGX_CONF_UNSET_UINT;
    ctx->post_seek = NGX_CONF_UNSET_UINT;

    sfx = &ctx->fmt->sfx;

    if (name.len < sfx->len ||
        FUNC14(sfx->data, name.data + name.len - sfx->len,
                        sfx->len))
    {
        ctx->sfx = *sfx;
    }

    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: fmt=%V", &ctx->fmt->name);

    return FUNC10(s, v);

next:
    return FUNC0(s, v);
}