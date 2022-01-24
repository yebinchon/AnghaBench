#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_23__ {int out_buffer; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_24__ {int publishing; scalar_t__ active; TYPE_5__* ctx; } ;
typedef  TYPE_4__ ngx_rtmp_live_stream_t ;
struct TYPE_25__ {unsigned int publishing; TYPE_4__* stream; TYPE_2__* cs; struct TYPE_25__* next; TYPE_3__* session; } ;
typedef  TYPE_5__ ngx_rtmp_live_ctx_t ;
struct TYPE_26__ {scalar_t__ buflen; scalar_t__ idle_streams; } ;
typedef  TYPE_6__ ngx_rtmp_live_app_conf_t ;
struct TYPE_22__ {int /*<<< orphan*/  csid; } ;
struct TYPE_21__ {int /*<<< orphan*/  log; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_RTMP_CSID_AUDIO ; 
 int /*<<< orphan*/  NGX_RTMP_CSID_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_6__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__** FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ngx_rtmp_live_module ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(ngx_rtmp_session_t *s, u_char *name, unsigned publisher)
{
    ngx_rtmp_live_ctx_t            *ctx;
    ngx_rtmp_live_stream_t        **stream;
    ngx_rtmp_live_app_conf_t       *lacf;

    lacf = FUNC6(s, ngx_rtmp_live_module);
    if (lacf == NULL) {
        return;
    }

    ctx = FUNC7(s, ngx_rtmp_live_module);
    if (ctx && ctx->stream) {
        FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "live: already joined");
        return;
    }

    if (ctx == NULL) {
        ctx = FUNC4(s->connection->pool, sizeof(ngx_rtmp_live_ctx_t));
        FUNC11(s, ctx, ngx_rtmp_live_module);
    }

    FUNC3(ctx, sizeof(*ctx));

    ctx->session = s;

    FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: join '%s'", name);

    stream = FUNC8(s, name, publisher || lacf->idle_streams);

    if (stream == NULL ||
        !(publisher || (*stream)->publishing || lacf->idle_streams))
    {
        FUNC2(NGX_LOG_ERR, s->connection->log, 0,
                      "live: stream not found");

        FUNC10(s, "NetStream.Play.StreamNotFound", "error",
                             "No such stream");

        FUNC5(s);

        return;
    }

    if (publisher) {
        if ((*stream)->publishing) {
            FUNC2(NGX_LOG_ERR, s->connection->log, 0,
                          "live: already publishing");

            FUNC10(s, "NetStream.Publish.BadName", "error",
                                 "Already publishing");

            return;
        }

        (*stream)->publishing = 1;
    }

    ctx->stream = *stream;
    ctx->publishing = publisher;
    ctx->next = (*stream)->ctx;

    (*stream)->ctx = ctx;

    if (lacf->buflen) {
        s->out_buffer = 1;
    }

    ctx->cs[0].csid = NGX_RTMP_CSID_VIDEO;
    ctx->cs[1].csid = NGX_RTMP_CSID_AUDIO;

    if (!ctx->publishing && ctx->stream->active) {
        FUNC9(s);
    }
}