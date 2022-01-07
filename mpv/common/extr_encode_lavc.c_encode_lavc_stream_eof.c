
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_stream {int name; int st; } ;
struct encode_priv {int failed; } ;
struct encode_lavc_context {int lock; struct encode_priv* priv; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;
typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;


 int MP_ERR (struct encode_priv*,char*,int ) ;
 struct mux_stream* find_mux_stream (struct encode_lavc_context*,int) ;
 int mp_to_av_stream_type (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void encode_lavc_stream_eof(struct encode_lavc_context *ctx,
                            enum stream_type type)
{
    if (!ctx)
        return;

    struct encode_priv *p = ctx->priv;

    pthread_mutex_lock(&ctx->lock);

    enum AVMediaType codec_type = mp_to_av_stream_type(type);
    struct mux_stream *dst = find_mux_stream(ctx, codec_type);





    if (dst && !dst->st) {
        MP_ERR(p, "No data on stream %s.\n", dst->name);
        p->failed = 1;
    }

    pthread_mutex_unlock(&ctx->lock);
}
