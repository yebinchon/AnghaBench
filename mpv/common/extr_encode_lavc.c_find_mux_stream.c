
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_stream {int codec_type; } ;
struct encode_priv {int num_streams; struct mux_stream** streams; } ;
struct encode_lavc_context {struct encode_priv* priv; } ;
typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;



__attribute__((used)) static struct mux_stream *find_mux_stream(struct encode_lavc_context *ctx,
                                          enum AVMediaType codec_type)
{
    struct encode_priv *p = ctx->priv;

    for (int n = 0; n < p->num_streams; n++) {
        struct mux_stream *s = p->streams[n];
        if (s->codec_type == codec_type)
            return s;
    }

    return ((void*)0);
}
