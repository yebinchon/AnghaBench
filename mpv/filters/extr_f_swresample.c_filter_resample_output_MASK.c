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
struct TYPE_4__ {int /*<<< orphan*/  f; } ;
struct priv {int in_rate; scalar_t__ current_pts; TYPE_2__ public; int /*<<< orphan*/  speed; struct mp_aframe* input; int /*<<< orphan*/  avrctx_out; int /*<<< orphan*/  reorder_buffer; int /*<<< orphan*/  pre_out_fmt; int /*<<< orphan*/  reorder_out; int /*<<< orphan*/  pool_fmt; int /*<<< orphan*/  avrctx; int /*<<< orphan*/  out_pool; TYPE_1__* opts; } ;
struct mp_frame {int dummy; } ;
struct mp_chmap {int dummy; } ;
struct mp_aframe {int dummy; } ;
struct TYPE_3__ {int max_output_frame_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 struct mp_frame FUNC0 (int /*<<< orphan*/ ,struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC1 (double,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct priv*,char*) ; 
 int /*<<< orphan*/  MP_FRAME_AUDIO ; 
 scalar_t__ MP_NOPTS_VALUE ; 
 struct mp_frame MP_NO_FRAME ; 
 int /*<<< orphan*/  FUNC4 (struct mp_aframe**) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_aframe*) ; 
 double FUNC6 (struct priv*) ; 
 int FUNC7 (struct priv*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_aframe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_aframe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_aframe*,struct mp_aframe*) ; 
 struct mp_aframe* FUNC12 () ; 
 double FUNC13 (struct mp_aframe*) ; 
 scalar_t__ FUNC14 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct mp_chmap*) ; 
 int FUNC16 (struct mp_aframe*) ; 
 double FUNC17 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC18 (struct mp_aframe*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,struct mp_aframe*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct mp_aframe*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct mp_aframe*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct mp_aframe*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct mp_aframe*,int /*<<< orphan*/ ,struct mp_chmap*) ; 
 int FUNC25 (int /*<<< orphan*/ ,struct mp_aframe*,struct mp_aframe*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct mp_aframe*) ; 

__attribute__((used)) static struct mp_frame FUNC27(struct priv *p,
                                              struct mp_aframe *in)
{
    struct mp_aframe *out = NULL;

    if (!p->avrctx)
        goto error;

    // Limit the filtered data size for better latency when changing speed.
    // Avoid buffering data within the resampler => restrict input size.
    // p->in_rate already includes the speed factor.
    double s = p->opts->max_output_frame_size / 1000 * p->in_rate;
    int max_in = FUNC8(FUNC1(s, 128, INT_MAX));
    int consume_in = in ? FUNC16(in) : 0;
    consume_in = FUNC2(consume_in, max_in);

    int samples = FUNC7(p, consume_in);
    out = FUNC12();
    FUNC9(out, p->pool_fmt);
    if (FUNC19(p->out_pool, out, samples) < 0)
        goto error;

    int out_samples = 0;
    if (samples) {
        out_samples = FUNC25(p->avrctx, out, in, consume_in);
        if (out_samples < 0 || out_samples > samples)
            goto error;
        FUNC21(out, out_samples);
    }

    struct mp_chmap out_chmap;
    if (!FUNC15(p->pool_fmt, &out_chmap))
        goto error;
    if (!FUNC24(out, p->reorder_out, &out_chmap))
        goto error;

    if (!FUNC10(out, p->pre_out_fmt)) {
        struct mp_aframe *new = FUNC12();
        FUNC9(new, p->pre_out_fmt);
        if (FUNC19(p->reorder_buffer, new, out_samples) < 0) {
            FUNC26(new);
            goto error;
        }
        int got = 0;
        if (out_samples)
            got = FUNC25(p->avrctx_out, new, out, out_samples);
        FUNC26(out);
        out = new;
        if (got != out_samples)
            goto error;
    }

    FUNC5(out);

    if (in) {
        FUNC11(out, in);
        p->current_pts = FUNC14(in);
        FUNC22(in, consume_in);
    }

    if (out_samples) {
        if (p->current_pts != MP_NOPTS_VALUE) {
            double delay = FUNC6(p) * FUNC17(out) +
                           FUNC13(out) +
                           (p->input ? FUNC13(p->input) : 0);
            FUNC20(out, p->current_pts - delay);
            FUNC18(out, p->speed);
        }
    } else {
        FUNC4(&out);
    }

    return out ? FUNC0(MP_FRAME_AUDIO, out) : MP_NO_FRAME;
error:
    FUNC26(out);
    FUNC3(p, "Error on resampling.\n");
    FUNC23(p->public.f);
    return MP_NO_FRAME;
}