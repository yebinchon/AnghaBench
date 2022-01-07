
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_stream {scalar_t__ type; TYPE_1__* codec; } ;
struct mp_decoder_wrapper {int play_dir; scalar_t__ fps; struct mp_filter* f; } ;
struct priv {int demux; struct sh_stream* header; void* log; struct mp_decoder_wrapper public; TYPE_2__* opt_cache; TYPE_1__* codec; struct mp_filter* f; } ;
struct mp_filter {int * pins; void* log; int global; struct priv* priv; } ;
struct MPOpts {scalar_t__ force_fps; } ;
struct TYPE_4__ {struct MPOpts* opts; } ;
struct TYPE_3__ {scalar_t__ fps; } ;


 int GLOBAL_CONFIG ;
 int MP_INFO (struct priv*,char*,...) ;
 int MP_PIN_OUT ;
 int MP_VERBOSE (struct priv*,char*,scalar_t__) ;
 scalar_t__ STREAM_AUDIO ;
 scalar_t__ STREAM_VIDEO ;
 int decode_wrapper_filter ;
 TYPE_2__* m_config_cache_alloc (struct priv*,int ,int ) ;
 struct mp_filter* mp_demux_in_create (struct mp_filter*,struct sh_stream*) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 void* mp_log_new (struct mp_filter*,void*,char*) ;
 int reset (struct mp_filter*) ;
 int talloc_free (struct mp_filter*) ;

struct mp_decoder_wrapper *mp_decoder_wrapper_create(struct mp_filter *parent,
                                                     struct sh_stream *src)
{
    struct mp_filter *f = mp_filter_create(parent, &decode_wrapper_filter);
    if (!f)
        return ((void*)0);

    struct priv *p = f->priv;
    struct mp_decoder_wrapper *w = &p->public;
    p->opt_cache = m_config_cache_alloc(p, f->global, GLOBAL_CONFIG);
    p->log = f->log;
    p->f = f;
    p->header = src;
    p->codec = p->header->codec;
    w->f = f;

    w->play_dir = 1;

    struct MPOpts *opts = p->opt_cache->opts;

    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    if (p->header->type == STREAM_VIDEO) {
        p->log = f->log = mp_log_new(f, parent->log, "!vd");

        p->public.fps = src->codec->fps;

        MP_VERBOSE(p, "Container reported FPS: %f\n", p->public.fps);

        if (opts->force_fps) {
            p->public.fps = opts->force_fps;
            MP_INFO(p, "FPS forced to %5.3f.\n", p->public.fps);
            MP_INFO(p, "Use --no-correct-pts to force FPS based timing.\n");
        }
    } else if (p->header->type == STREAM_AUDIO) {
        p->log = f->log = mp_log_new(f, parent->log, "!ad");
    }

    struct mp_filter *demux = mp_demux_in_create(f, p->header);
    if (!demux)
        goto error;
    p->demux = demux->pins[0];

    reset(f);

    return w;
error:
    talloc_free(f);
    return ((void*)0);
}
