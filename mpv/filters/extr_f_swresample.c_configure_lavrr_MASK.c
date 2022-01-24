#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  f; } ;
struct mp_chmap {scalar_t__ num; } ;
struct priv {int in_rate; int out_rate; int is_resampling; TYPE_1__ public; void* avrctx_out; void* avrctx; int /*<<< orphan*/  reorder_in; void* pool_fmt; void* avrctx_fmt; void* pre_out_fmt; int /*<<< orphan*/  out_format; struct mp_chmap out_channels; int /*<<< orphan*/  reorder_out; struct mp_chmap in_channels; TYPE_2__* opts; int /*<<< orphan*/  log; int /*<<< orphan*/  in_format; int /*<<< orphan*/  speed; int /*<<< orphan*/  in_rate_user; } ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_4__ {int filter_size; int phase_shift; int linear; double cutoff; int normalize; int /*<<< orphan*/  avopts; } ;

/* Variables and functions */
 int AV_SAMPLE_FMT_NONE ; 
 double FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct priv*,char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,char*,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 () ; 
 scalar_t__ FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct priv*) ; 
 int FUNC14 (struct priv*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (void*,void*) ; 
 void* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (void*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (void*,int) ; 
 scalar_t__ FUNC20 (struct mp_chmap*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC21 (struct mp_chmap*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct mp_chmap*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct mp_chmap*,struct mp_chmap*) ; 
 scalar_t__ FUNC24 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC25 (struct mp_chmap*,scalar_t__) ; 
 int FUNC26 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC27 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC32(struct priv *p, bool verbose)
{
    FUNC13(p);

    p->in_rate = FUNC30(p->in_rate_user, p->speed);

    FUNC3(p, "%dHz %s %s -> %dHz %s %s\n",
               p->in_rate, FUNC27(&p->in_channels),
               FUNC4(p->in_format),
               p->out_rate, FUNC27(&p->out_channels),
               FUNC4(p->out_format));

    p->avrctx = FUNC10();
    p->avrctx_out = FUNC10();
    if (!p->avrctx || !p->avrctx_out)
        goto error;

    enum AVSampleFormat in_samplefmt = FUNC6(p->in_format);
    enum AVSampleFormat out_samplefmt = FUNC6(p->out_format);
    enum AVSampleFormat out_samplefmtp = FUNC7(out_samplefmt);

    if (in_samplefmt == AV_SAMPLE_FMT_NONE ||
        out_samplefmt == AV_SAMPLE_FMT_NONE ||
        out_samplefmtp == AV_SAMPLE_FMT_NONE)
    {
        FUNC1(p, "unsupported conversion: %s -> %s\n",
               FUNC4(p->in_format), FUNC4(p->out_format));
        goto error;
    }

    FUNC9(p->avrctx, "filter_size",        p->opts->filter_size, 0);
    FUNC9(p->avrctx, "phase_shift",        p->opts->phase_shift, 0);
    FUNC9(p->avrctx, "linear_interp",      p->opts->linear, 0);

    double cutoff = p->opts->cutoff;
    if (cutoff <= 0.0)
        cutoff = FUNC0(1.0 - 6.5 / (p->opts->filter_size + 8), 0.80);
    FUNC8(p->avrctx, "cutoff",          cutoff, 0);

    int normalize = p->opts->normalize;
#if HAVE_LIBSWRESAMPLE
    av_opt_set_double(p->avrctx, "rematrix_maxval", normalize ? 1 : 1000, 0);
#else
    FUNC9(p->avrctx, "normalize_mix_level", !!normalize, 0);
#endif

    if (FUNC29(p->log, p->avrctx, p->opts->avopts) < 0)
        goto error;

    struct mp_chmap map_in = p->in_channels;
    struct mp_chmap map_out = p->out_channels;

    // Try not to do any remixing if at least one is "unknown". Some corner
    // cases also benefit from disabling all channel handling logic if the
    // src/dst layouts are the same (like fl-fr-na -> fl-fr-na).
    if (FUNC24(&map_in) || FUNC24(&map_out) ||
        FUNC20(&map_in, &map_out))
    {
        FUNC25(&map_in, map_in.num);
        FUNC25(&map_out, map_out.num);
    }

    // unchecked: don't take any channel reordering into account
    uint64_t in_ch_layout = FUNC26(&map_in);
    uint64_t out_ch_layout = FUNC26(&map_out);

    struct mp_chmap in_lavc, out_lavc;
    FUNC22(&in_lavc, in_ch_layout);
    FUNC22(&out_lavc, out_ch_layout);

    if (verbose && !FUNC20(&in_lavc, &out_lavc)) {
        FUNC3(p, "Remix: %s -> %s\n", FUNC27(&in_lavc),
                                            FUNC27(&out_lavc));
    }

    if (in_lavc.num != map_in.num) {
        // For handling NA channels, we would have to add a planarization step.
        FUNC2(p, "Unsupported input channel layout %s.\n",
                 FUNC27(&map_in));
        goto error;
    }

    FUNC23(p->reorder_in, &map_in, &in_lavc);
    FUNC31(p->reorder_in, map_in.num);

    if (FUNC20(&out_lavc, &map_out)) {
        // No intermediate step required - output new format directly.
        out_samplefmtp = out_samplefmt;
    } else {
        // Verify that we really just reorder and/or insert NA channels.
        struct mp_chmap withna = out_lavc;
        FUNC21(&withna, map_out.num);
        if (withna.num != map_out.num)
            goto error;
    }
    FUNC23(p->reorder_out, &out_lavc, &map_out);

    p->pre_out_fmt = FUNC16();
    FUNC19(p->pre_out_fmt, p->out_rate);
    FUNC17(p->pre_out_fmt, &p->out_channels);
    FUNC18(p->pre_out_fmt, p->out_format);

    p->avrctx_fmt = FUNC16();
    FUNC15(p->avrctx_fmt, p->pre_out_fmt);
    FUNC17(p->avrctx_fmt, &out_lavc);
    FUNC18(p->avrctx_fmt, FUNC5(out_samplefmtp));

    // If there are NA channels, the final output will have more channels than
    // the avrctx output. Also, avrctx will output planar (out_samplefmtp was
    // not overwritten). Allocate the output frame with more channels, so the
    // NA channels can be trivially added.
    p->pool_fmt = FUNC16();
    FUNC15(p->pool_fmt, p->avrctx_fmt);
    if (map_out.num > out_lavc.num)
        FUNC17(p->pool_fmt, &map_out);

    out_ch_layout = FUNC14(p, in_ch_layout, out_ch_layout);

    // Real conversion; output is input to avrctx_out.
    FUNC9(p->avrctx, "in_channel_layout",  in_ch_layout, 0);
    FUNC9(p->avrctx, "out_channel_layout", out_ch_layout, 0);
    FUNC9(p->avrctx, "in_sample_rate",     p->in_rate, 0);
    FUNC9(p->avrctx, "out_sample_rate",    p->out_rate, 0);
    FUNC9(p->avrctx, "in_sample_fmt",      in_samplefmt, 0);
    FUNC9(p->avrctx, "out_sample_fmt",     out_samplefmtp, 0);

    // Just needs the correct number of channels for deplanarization.
    struct mp_chmap fake_chmap;
    FUNC25(&fake_chmap, map_out.num);
    uint64_t fake_out_ch_layout = FUNC26(&fake_chmap);
    if (!fake_out_ch_layout)
        goto error;
    FUNC9(p->avrctx_out, "in_channel_layout",  fake_out_ch_layout, 0);
    FUNC9(p->avrctx_out, "out_channel_layout", fake_out_ch_layout, 0);

    FUNC9(p->avrctx_out, "in_sample_fmt",      out_samplefmtp, 0);
    FUNC9(p->avrctx_out, "out_sample_fmt",     out_samplefmt, 0);
    FUNC9(p->avrctx_out, "in_sample_rate",     p->out_rate, 0);
    FUNC9(p->avrctx_out, "out_sample_rate",    p->out_rate, 0);

    // API has weird requirements, quoting avresample.h:
    //  * This function can only be called when the allocated context is not open.
    //  * Also, the input channel layout must have already been set.
    FUNC12(p->avrctx, p->reorder_in);

    p->is_resampling = false;

    if (FUNC11(p->avrctx) < 0 || FUNC11(p->avrctx_out) < 0) {
        FUNC1(p, "Cannot open Libavresample context.\n");
        goto error;
    }
    return true;

error:
    FUNC13(p);
    FUNC28(p->public.f);
    FUNC2(p, "libswresample failed to initialize.\n");
    return false;
}