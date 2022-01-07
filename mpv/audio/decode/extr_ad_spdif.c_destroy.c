
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct spdifContext {TYPE_1__* lavf_ctx; scalar_t__ need_close; } ;
struct mp_filter {struct spdifContext* priv; } ;
struct TYPE_6__ {struct TYPE_6__* buffer; } ;
struct TYPE_5__ {TYPE_4__* pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int av_freep (TYPE_4__**) ;
 int av_write_trailer (TYPE_1__*) ;
 int avformat_free_context (TYPE_1__*) ;

__attribute__((used)) static void destroy(struct mp_filter *da)
{
    struct spdifContext *spdif_ctx = da->priv;
    AVFormatContext *lavf_ctx = spdif_ctx->lavf_ctx;

    if (lavf_ctx) {
        if (spdif_ctx->need_close)
            av_write_trailer(lavf_ctx);
        if (lavf_ctx->pb)
            av_freep(&lavf_ctx->pb->buffer);
        av_freep(&lavf_ctx->pb);
        avformat_free_context(lavf_ctx);
        spdif_ctx->lavf_ctx = ((void*)0);
    }
}
