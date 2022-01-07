
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int f; } ;
struct priv {int in_rate; scalar_t__ current_pts; TYPE_2__ public; int speed; struct mp_aframe* input; int avrctx_out; int reorder_buffer; int pre_out_fmt; int reorder_out; int pool_fmt; int avrctx; int out_pool; TYPE_1__* opts; } ;
struct mp_frame {int dummy; } ;
struct mp_chmap {int dummy; } ;
struct mp_aframe {int dummy; } ;
struct TYPE_3__ {int max_output_frame_size; } ;


 int INT_MAX ;
 struct mp_frame MAKE_FRAME (int ,struct mp_aframe*) ;
 int MPCLAMP (double,int,int ) ;
 int MPMIN (int,int) ;
 int MP_ERR (struct priv*,char*) ;
 int MP_FRAME_AUDIO ;
 scalar_t__ MP_NOPTS_VALUE ;
 struct mp_frame MP_NO_FRAME ;
 int TA_FREEP (struct mp_aframe**) ;
 int extra_output_conversion (struct mp_aframe*) ;
 double get_delay (struct priv*) ;
 int get_out_samples (struct priv*,int) ;
 int lrint (int ) ;
 int mp_aframe_config_copy (struct mp_aframe*,int ) ;
 int mp_aframe_config_equals (struct mp_aframe*,int ) ;
 int mp_aframe_copy_attributes (struct mp_aframe*,struct mp_aframe*) ;
 struct mp_aframe* mp_aframe_create () ;
 double mp_aframe_duration (struct mp_aframe*) ;
 scalar_t__ mp_aframe_end_pts (struct mp_aframe*) ;
 int mp_aframe_get_chmap (int ,struct mp_chmap*) ;
 int mp_aframe_get_size (struct mp_aframe*) ;
 double mp_aframe_get_speed (struct mp_aframe*) ;
 int mp_aframe_mul_speed (struct mp_aframe*,int ) ;
 scalar_t__ mp_aframe_pool_allocate (int ,struct mp_aframe*,int) ;
 int mp_aframe_set_pts (struct mp_aframe*,scalar_t__) ;
 int mp_aframe_set_size (struct mp_aframe*,int) ;
 int mp_aframe_skip_samples (struct mp_aframe*,int) ;
 int mp_filter_internal_mark_failed (int ) ;
 int reorder_planes (struct mp_aframe*,int ,struct mp_chmap*) ;
 int resample_frame (int ,struct mp_aframe*,struct mp_aframe*,int) ;
 int talloc_free (struct mp_aframe*) ;

__attribute__((used)) static struct mp_frame filter_resample_output(struct priv *p,
                                              struct mp_aframe *in)
{
    struct mp_aframe *out = ((void*)0);

    if (!p->avrctx)
        goto error;




    double s = p->opts->max_output_frame_size / 1000 * p->in_rate;
    int max_in = lrint(MPCLAMP(s, 128, INT_MAX));
    int consume_in = in ? mp_aframe_get_size(in) : 0;
    consume_in = MPMIN(consume_in, max_in);

    int samples = get_out_samples(p, consume_in);
    out = mp_aframe_create();
    mp_aframe_config_copy(out, p->pool_fmt);
    if (mp_aframe_pool_allocate(p->out_pool, out, samples) < 0)
        goto error;

    int out_samples = 0;
    if (samples) {
        out_samples = resample_frame(p->avrctx, out, in, consume_in);
        if (out_samples < 0 || out_samples > samples)
            goto error;
        mp_aframe_set_size(out, out_samples);
    }

    struct mp_chmap out_chmap;
    if (!mp_aframe_get_chmap(p->pool_fmt, &out_chmap))
        goto error;
    if (!reorder_planes(out, p->reorder_out, &out_chmap))
        goto error;

    if (!mp_aframe_config_equals(out, p->pre_out_fmt)) {
        struct mp_aframe *new = mp_aframe_create();
        mp_aframe_config_copy(new, p->pre_out_fmt);
        if (mp_aframe_pool_allocate(p->reorder_buffer, new, out_samples) < 0) {
            talloc_free(new);
            goto error;
        }
        int got = 0;
        if (out_samples)
            got = resample_frame(p->avrctx_out, new, out, out_samples);
        talloc_free(out);
        out = new;
        if (got != out_samples)
            goto error;
    }

    extra_output_conversion(out);

    if (in) {
        mp_aframe_copy_attributes(out, in);
        p->current_pts = mp_aframe_end_pts(in);
        mp_aframe_skip_samples(in, consume_in);
    }

    if (out_samples) {
        if (p->current_pts != MP_NOPTS_VALUE) {
            double delay = get_delay(p) * mp_aframe_get_speed(out) +
                           mp_aframe_duration(out) +
                           (p->input ? mp_aframe_duration(p->input) : 0);
            mp_aframe_set_pts(out, p->current_pts - delay);
            mp_aframe_mul_speed(out, p->speed);
        }
    } else {
        TA_FREEP(&out);
    }

    return out ? MAKE_FRAME(MP_FRAME_AUDIO, out) : MP_NO_FRAME;
error:
    talloc_free(out);
    MP_ERR(p, "Error on resampling.\n");
    mp_filter_internal_mark_failed(p->public.f);
    return MP_NO_FRAME;
}
