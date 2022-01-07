
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mux_stream {int on_ready_ctx; int (* on_ready ) (int ) ;int st; } ;
struct encode_priv {int header_written; int failed; int num_streams; struct mux_stream** streams; int log; TYPE_4__* muxer; TYPE_2__* metadata; int t0; } ;
struct encode_lavc_context {TYPE_3__* options; struct encode_priv* priv; } ;
struct TYPE_8__ {int metadata; TYPE_1__* oformat; int url; int pb; } ;
struct TYPE_7__ {int fopts; } ;
struct TYPE_6__ {int num_keys; int * values; int * keys; } ;
struct TYPE_5__ {int flags; int name; int long_name; } ;
typedef int AVDictionary ;


 int AVFMT_NOFILE ;
 int AVIO_FLAG_WRITE ;
 int MP_FATAL (struct encode_priv*,char*,...) ;
 int MP_INFO (struct encode_priv*,char*,int ,...) ;
 int MSGL_WARN ;
 int av_dict_free (int **) ;
 int av_dict_set (int *,int ,int ,int ) ;
 scalar_t__ avformat_write_header (TYPE_4__*,int **) ;
 scalar_t__ avio_open (int *,int ,int ) ;
 int mp_avdict_print_unset (int ,int ,int *) ;
 int mp_set_avdict (int **,int ) ;
 int mp_time_sec () ;
 int stub1 (int ) ;

__attribute__((used)) static void maybe_init_muxer(struct encode_lavc_context *ctx)
{
    struct encode_priv *p = ctx->priv;

    if (p->header_written || p->failed)
        return;




    for (int n = 0; n < p->num_streams; n++) {
        if (!p->streams[n]->st)
            return;
    }

    if (!(p->muxer->oformat->flags & AVFMT_NOFILE)) {
        MP_INFO(p, "Opening output file: %s\n", p->muxer->url);

        if (avio_open(&p->muxer->pb, p->muxer->url, AVIO_FLAG_WRITE) < 0) {
            MP_FATAL(p, "could not open '%s'\n", p->muxer->url);
            goto failed;
        }
    }

    p->t0 = mp_time_sec();

    MP_INFO(p, "Opening muxer: %s [%s]\n",
            p->muxer->oformat->long_name, p->muxer->oformat->name);

    if (p->metadata) {
        for (int i = 0; i < p->metadata->num_keys; i++) {
            av_dict_set(&p->muxer->metadata,
                p->metadata->keys[i], p->metadata->values[i], 0);
        }
    }

    AVDictionary *opts = ((void*)0);
    mp_set_avdict(&opts, ctx->options->fopts);

    if (avformat_write_header(p->muxer, &opts) < 0) {
        MP_FATAL(p, "Failed to initialize muxer.\n");
        p->failed = 1;
    } else {
        mp_avdict_print_unset(p->log, MSGL_WARN, opts);
    }

    av_dict_free(&opts);

    if (p->failed)
        goto failed;

    p->header_written = 1;

    for (int n = 0; n < p->num_streams; n++) {
        struct mux_stream *s = p->streams[n];

        if (s->on_ready)
            s->on_ready(s->on_ready_ctx);
    }

    return;

failed:
    p->failed = 1;
}
