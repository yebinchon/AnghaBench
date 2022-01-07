
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mp_decoder {int control; struct mp_filter* f; } ;
struct TYPE_6__ {struct mp_decoder public; int avctx; int vo; int hwdec_devs; int dr_lock; void* dr_pool; void* hwdec_swpool; int decoder; struct mp_codec_params* codec; TYPE_4__* opts_cache; int opts; int log; } ;
typedef TYPE_1__ vd_ffmpeg_ctx ;
struct mp_stream_info {int dr_vo; int hwdec_devs; } ;
struct mp_filter {int global; int log; TYPE_1__* priv; } ;
struct mp_codec_params {int dummy; } ;
struct TYPE_7__ {int opts; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int control ;
 TYPE_4__* m_config_cache_alloc (TYPE_1__*,int ,int *) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 struct mp_stream_info* mp_filter_find_stream_info (struct mp_filter*) ;
 void* mp_image_pool_new (TYPE_1__*) ;
 int mp_log_new (struct mp_filter*,int ,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int reinit (struct mp_filter*) ;
 int talloc_free (struct mp_filter*) ;
 int talloc_strdup (TYPE_1__*,char const*) ;
 int vd_lavc_conf ;
 int vd_lavc_filter ;

__attribute__((used)) static struct mp_decoder *create(struct mp_filter *parent,
                                 struct mp_codec_params *codec,
                                 const char *decoder)
{
    struct mp_filter *vd = mp_filter_create(parent, &vd_lavc_filter);
    if (!vd)
        return ((void*)0);

    mp_filter_add_pin(vd, MP_PIN_IN, "in");
    mp_filter_add_pin(vd, MP_PIN_OUT, "out");

    vd->log = mp_log_new(vd, parent->log, ((void*)0));

    vd_ffmpeg_ctx *ctx = vd->priv;
    ctx->log = vd->log;
    ctx->opts_cache = m_config_cache_alloc(ctx, vd->global, &vd_lavc_conf);
    ctx->opts = ctx->opts_cache->opts;
    ctx->codec = codec;
    ctx->decoder = talloc_strdup(ctx, decoder);
    ctx->hwdec_swpool = mp_image_pool_new(ctx);
    ctx->dr_pool = mp_image_pool_new(ctx);

    ctx->public.f = vd;
    ctx->public.control = control;

    pthread_mutex_init(&ctx->dr_lock, ((void*)0));


    struct mp_stream_info *info = mp_filter_find_stream_info(vd);
    if (info) {
        ctx->hwdec_devs = info->hwdec_devs;
        ctx->vo = info->dr_vo;
    }

    reinit(vd);

    if (!ctx->avctx) {
        talloc_free(vd);
        return ((void*)0);
    }
    return &ctx->public;
}
