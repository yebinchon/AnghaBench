
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_23__ {int out_buffer; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_24__ {int publishing; scalar_t__ active; TYPE_5__* ctx; } ;
typedef TYPE_4__ ngx_rtmp_live_stream_t ;
struct TYPE_25__ {unsigned int publishing; TYPE_4__* stream; TYPE_2__* cs; struct TYPE_25__* next; TYPE_3__* session; } ;
typedef TYPE_5__ ngx_rtmp_live_ctx_t ;
struct TYPE_26__ {scalar_t__ buflen; scalar_t__ idle_streams; } ;
typedef TYPE_6__ ngx_rtmp_live_app_conf_t ;
struct TYPE_22__ {int csid; } ;
struct TYPE_21__ {int log; int pool; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_ERR ;
 int NGX_RTMP_CSID_AUDIO ;
 int NGX_RTMP_CSID_VIDEO ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memzero (TYPE_5__*,int) ;
 TYPE_5__* ngx_palloc (int ,int) ;
 int ngx_rtmp_finalize_session (TYPE_3__*) ;
 TYPE_6__* ngx_rtmp_get_module_app_conf (TYPE_3__*,int ) ;
 TYPE_5__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_4__** ngx_rtmp_live_get_stream (TYPE_3__*,int *,int) ;
 int ngx_rtmp_live_module ;
 int ngx_rtmp_live_start (TYPE_3__*) ;
 int ngx_rtmp_send_status (TYPE_3__*,char*,char*,char*) ;
 int ngx_rtmp_set_ctx (TYPE_3__*,TYPE_5__*,int ) ;

__attribute__((used)) static void
ngx_rtmp_live_join(ngx_rtmp_session_t *s, u_char *name, unsigned publisher)
{
    ngx_rtmp_live_ctx_t *ctx;
    ngx_rtmp_live_stream_t **stream;
    ngx_rtmp_live_app_conf_t *lacf;

    lacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_live_module);
    if (lacf == ((void*)0)) {
        return;
    }

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_live_module);
    if (ctx && ctx->stream) {
        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "live: already joined");
        return;
    }

    if (ctx == ((void*)0)) {
        ctx = ngx_palloc(s->connection->pool, sizeof(ngx_rtmp_live_ctx_t));
        ngx_rtmp_set_ctx(s, ctx, ngx_rtmp_live_module);
    }

    ngx_memzero(ctx, sizeof(*ctx));

    ctx->session = s;

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: join '%s'", name);

    stream = ngx_rtmp_live_get_stream(s, name, publisher || lacf->idle_streams);

    if (stream == ((void*)0) ||
        !(publisher || (*stream)->publishing || lacf->idle_streams))
    {
        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                      "live: stream not found");

        ngx_rtmp_send_status(s, "NetStream.Play.StreamNotFound", "error",
                             "No such stream");

        ngx_rtmp_finalize_session(s);

        return;
    }

    if (publisher) {
        if ((*stream)->publishing) {
            ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                          "live: already publishing");

            ngx_rtmp_send_status(s, "NetStream.Publish.BadName", "error",
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
        ngx_rtmp_live_start(s);
    }
}
