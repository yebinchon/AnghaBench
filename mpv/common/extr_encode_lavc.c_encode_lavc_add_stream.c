
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mux_stream {void (* on_ready ) (void*) ;void* on_ready_ctx; TYPE_1__* st; int encoder_timebase; } ;
struct encoder_stream_info {TYPE_2__* codecpar; int timebase; } ;
struct encode_priv {int failed; int muxer; } ;
struct encode_lavc_context {int lock; struct encode_priv* priv; } ;
struct TYPE_5__ {int sample_aspect_ratio; int codec_type; } ;
struct TYPE_4__ {int codecpar; int sample_aspect_ratio; int time_base; } ;


 int AVMEDIA_TYPE_VIDEO ;
 int MP_ERR (struct encode_priv*,char*) ;
 int MP_HANDLE_OOM (TYPE_1__*) ;
 scalar_t__ avcodec_parameters_copy (int ,TYPE_2__*) ;
 TYPE_1__* avformat_new_stream (int ,int *) ;
 struct mux_stream* find_mux_stream (struct encode_lavc_context*,int ) ;
 int maybe_init_muxer (struct encode_lavc_context*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static struct mux_stream *encode_lavc_add_stream(struct encode_lavc_context *ctx,
                                                 struct encoder_stream_info *info,
                                                 void (*on_ready)(void *ctx),
                                                 void *on_ready_ctx)
{
    struct encode_priv *p = ctx->priv;

    pthread_mutex_lock(&ctx->lock);

    struct mux_stream *dst = find_mux_stream(ctx, info->codecpar->codec_type);
    if (!dst) {
        MP_ERR(p, "Cannot add a stream at runtime.\n");
        p->failed = 1;
        goto done;
    }
    if (dst->st) {

        MP_ERR(p, "Encoder was reinitialized; this is not allowed.\n");
        p->failed = 1;
        dst = ((void*)0);
        goto done;
    }

    dst->st = avformat_new_stream(p->muxer, ((void*)0));
    MP_HANDLE_OOM(dst->st);

    dst->encoder_timebase = info->timebase;
    dst->st->time_base = info->timebase;


    if (info->codecpar->codec_type == AVMEDIA_TYPE_VIDEO)
        dst->st->sample_aspect_ratio = info->codecpar->sample_aspect_ratio;

    if (avcodec_parameters_copy(dst->st->codecpar, info->codecpar) < 0)
        MP_HANDLE_OOM(0);

    dst->on_ready = on_ready;
    dst->on_ready_ctx = on_ready_ctx;

    maybe_init_muxer(ctx);

done:
    pthread_mutex_unlock(&ctx->lock);

    return dst;
}
