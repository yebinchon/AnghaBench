
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int f; } ;
struct mp_chmap {scalar_t__ num; } ;
struct priv {int in_rate; int out_rate; int is_resampling; TYPE_1__ public; void* avrctx_out; void* avrctx; int reorder_in; void* pool_fmt; void* avrctx_fmt; void* pre_out_fmt; int out_format; struct mp_chmap out_channels; int reorder_out; struct mp_chmap in_channels; TYPE_2__* opts; int log; int in_format; int speed; int in_rate_user; } ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_4__ {int filter_size; int phase_shift; int linear; double cutoff; int normalize; int avopts; } ;


 int AV_SAMPLE_FMT_NONE ;
 double MPMAX (double,double) ;
 int MP_ERR (struct priv*,char*,...) ;
 int MP_FATAL (struct priv*,char*,...) ;
 int MP_VERBOSE (struct priv*,char*,int,int ,...) ;
 int af_fmt_to_str (int ) ;
 int af_from_avformat (int) ;
 int af_to_avformat (int ) ;
 int av_get_planar_sample_fmt (int) ;
 int av_opt_set_double (void*,char*,int,int ) ;
 int av_opt_set_int (void*,char*,int,int ) ;
 void* avresample_alloc_context () ;
 scalar_t__ avresample_open (void*) ;
 int avresample_set_channel_mapping (void*,int ) ;
 int close_lavrr (struct priv*) ;
 int fudge_layout_conversion (struct priv*,int,int) ;
 int mp_aframe_config_copy (void*,void*) ;
 void* mp_aframe_create () ;
 int mp_aframe_set_chmap (void*,struct mp_chmap*) ;
 int mp_aframe_set_format (void*,int ) ;
 int mp_aframe_set_rate (void*,int) ;
 scalar_t__ mp_chmap_equals (struct mp_chmap*,struct mp_chmap*) ;
 int mp_chmap_fill_na (struct mp_chmap*,scalar_t__) ;
 int mp_chmap_from_lavc (struct mp_chmap*,int) ;
 int mp_chmap_get_reorder (int ,struct mp_chmap*,struct mp_chmap*) ;
 scalar_t__ mp_chmap_is_unknown (struct mp_chmap*) ;
 int mp_chmap_set_unknown (struct mp_chmap*,scalar_t__) ;
 int mp_chmap_to_lavc_unchecked (struct mp_chmap*) ;
 int mp_chmap_to_str (struct mp_chmap*) ;
 int mp_filter_internal_mark_failed (int ) ;
 scalar_t__ mp_set_avopts (int ,void*,int ) ;
 int rate_from_speed (int ,int ) ;
 int transpose_order (int ,scalar_t__) ;

__attribute__((used)) static bool configure_lavrr(struct priv *p, bool verbose)
{
    close_lavrr(p);

    p->in_rate = rate_from_speed(p->in_rate_user, p->speed);

    MP_VERBOSE(p, "%dHz %s %s -> %dHz %s %s\n",
               p->in_rate, mp_chmap_to_str(&p->in_channels),
               af_fmt_to_str(p->in_format),
               p->out_rate, mp_chmap_to_str(&p->out_channels),
               af_fmt_to_str(p->out_format));

    p->avrctx = avresample_alloc_context();
    p->avrctx_out = avresample_alloc_context();
    if (!p->avrctx || !p->avrctx_out)
        goto error;

    enum AVSampleFormat in_samplefmt = af_to_avformat(p->in_format);
    enum AVSampleFormat out_samplefmt = af_to_avformat(p->out_format);
    enum AVSampleFormat out_samplefmtp = av_get_planar_sample_fmt(out_samplefmt);

    if (in_samplefmt == AV_SAMPLE_FMT_NONE ||
        out_samplefmt == AV_SAMPLE_FMT_NONE ||
        out_samplefmtp == AV_SAMPLE_FMT_NONE)
    {
        MP_ERR(p, "unsupported conversion: %s -> %s\n",
               af_fmt_to_str(p->in_format), af_fmt_to_str(p->out_format));
        goto error;
    }

    av_opt_set_int(p->avrctx, "filter_size", p->opts->filter_size, 0);
    av_opt_set_int(p->avrctx, "phase_shift", p->opts->phase_shift, 0);
    av_opt_set_int(p->avrctx, "linear_interp", p->opts->linear, 0);

    double cutoff = p->opts->cutoff;
    if (cutoff <= 0.0)
        cutoff = MPMAX(1.0 - 6.5 / (p->opts->filter_size + 8), 0.80);
    av_opt_set_double(p->avrctx, "cutoff", cutoff, 0);

    int normalize = p->opts->normalize;



    av_opt_set_int(p->avrctx, "normalize_mix_level", !!normalize, 0);


    if (mp_set_avopts(p->log, p->avrctx, p->opts->avopts) < 0)
        goto error;

    struct mp_chmap map_in = p->in_channels;
    struct mp_chmap map_out = p->out_channels;




    if (mp_chmap_is_unknown(&map_in) || mp_chmap_is_unknown(&map_out) ||
        mp_chmap_equals(&map_in, &map_out))
    {
        mp_chmap_set_unknown(&map_in, map_in.num);
        mp_chmap_set_unknown(&map_out, map_out.num);
    }


    uint64_t in_ch_layout = mp_chmap_to_lavc_unchecked(&map_in);
    uint64_t out_ch_layout = mp_chmap_to_lavc_unchecked(&map_out);

    struct mp_chmap in_lavc, out_lavc;
    mp_chmap_from_lavc(&in_lavc, in_ch_layout);
    mp_chmap_from_lavc(&out_lavc, out_ch_layout);

    if (verbose && !mp_chmap_equals(&in_lavc, &out_lavc)) {
        MP_VERBOSE(p, "Remix: %s -> %s\n", mp_chmap_to_str(&in_lavc),
                                            mp_chmap_to_str(&out_lavc));
    }

    if (in_lavc.num != map_in.num) {

        MP_FATAL(p, "Unsupported input channel layout %s.\n",
                 mp_chmap_to_str(&map_in));
        goto error;
    }

    mp_chmap_get_reorder(p->reorder_in, &map_in, &in_lavc);
    transpose_order(p->reorder_in, map_in.num);

    if (mp_chmap_equals(&out_lavc, &map_out)) {

        out_samplefmtp = out_samplefmt;
    } else {

        struct mp_chmap withna = out_lavc;
        mp_chmap_fill_na(&withna, map_out.num);
        if (withna.num != map_out.num)
            goto error;
    }
    mp_chmap_get_reorder(p->reorder_out, &out_lavc, &map_out);

    p->pre_out_fmt = mp_aframe_create();
    mp_aframe_set_rate(p->pre_out_fmt, p->out_rate);
    mp_aframe_set_chmap(p->pre_out_fmt, &p->out_channels);
    mp_aframe_set_format(p->pre_out_fmt, p->out_format);

    p->avrctx_fmt = mp_aframe_create();
    mp_aframe_config_copy(p->avrctx_fmt, p->pre_out_fmt);
    mp_aframe_set_chmap(p->avrctx_fmt, &out_lavc);
    mp_aframe_set_format(p->avrctx_fmt, af_from_avformat(out_samplefmtp));





    p->pool_fmt = mp_aframe_create();
    mp_aframe_config_copy(p->pool_fmt, p->avrctx_fmt);
    if (map_out.num > out_lavc.num)
        mp_aframe_set_chmap(p->pool_fmt, &map_out);

    out_ch_layout = fudge_layout_conversion(p, in_ch_layout, out_ch_layout);


    av_opt_set_int(p->avrctx, "in_channel_layout", in_ch_layout, 0);
    av_opt_set_int(p->avrctx, "out_channel_layout", out_ch_layout, 0);
    av_opt_set_int(p->avrctx, "in_sample_rate", p->in_rate, 0);
    av_opt_set_int(p->avrctx, "out_sample_rate", p->out_rate, 0);
    av_opt_set_int(p->avrctx, "in_sample_fmt", in_samplefmt, 0);
    av_opt_set_int(p->avrctx, "out_sample_fmt", out_samplefmtp, 0);


    struct mp_chmap fake_chmap;
    mp_chmap_set_unknown(&fake_chmap, map_out.num);
    uint64_t fake_out_ch_layout = mp_chmap_to_lavc_unchecked(&fake_chmap);
    if (!fake_out_ch_layout)
        goto error;
    av_opt_set_int(p->avrctx_out, "in_channel_layout", fake_out_ch_layout, 0);
    av_opt_set_int(p->avrctx_out, "out_channel_layout", fake_out_ch_layout, 0);

    av_opt_set_int(p->avrctx_out, "in_sample_fmt", out_samplefmtp, 0);
    av_opt_set_int(p->avrctx_out, "out_sample_fmt", out_samplefmt, 0);
    av_opt_set_int(p->avrctx_out, "in_sample_rate", p->out_rate, 0);
    av_opt_set_int(p->avrctx_out, "out_sample_rate", p->out_rate, 0);




    avresample_set_channel_mapping(p->avrctx, p->reorder_in);

    p->is_resampling = 0;

    if (avresample_open(p->avrctx) < 0 || avresample_open(p->avrctx_out) < 0) {
        MP_ERR(p, "Cannot open Libavresample context.\n");
        goto error;
    }
    return 1;

error:
    close_lavrr(p);
    mp_filter_internal_mark_failed(p->public.f);
    MP_FATAL(p, "libswresample failed to initialize.\n");
    return 0;
}
