
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hw_subfmt; } ;
struct priv {int require_filtering; int queue; TYPE_1__ out_params; TYPE_1__ params; int out_format; int pool; } ;
struct mp_image {TYPE_1__ params; } ;
struct mp_filter {struct priv* priv; } ;


 int DXGI_FORMAT_NV12 ;
 scalar_t__ IMGFMT_NV12 ;
 int destroy_video_proc (struct mp_filter*) ;
 int mp_filter_internal_mark_failed (struct mp_filter*) ;
 struct mp_image* mp_image_new_ref (int ) ;
 int mp_image_pool_clear (int ) ;
 int mp_refqueue_can_output (int ) ;
 struct mp_image* mp_refqueue_execute_reinit (int ) ;
 int mp_refqueue_get (int ,int ) ;
 int mp_refqueue_should_deint (int ) ;
 int mp_refqueue_write_out_pin (int ,struct mp_image*) ;
 struct mp_image* render (struct mp_filter*) ;

__attribute__((used)) static void vf_d3d11vpp_process(struct mp_filter *vf)
{
    struct priv *p = vf->priv;

    struct mp_image *in_fmt = mp_refqueue_execute_reinit(p->queue);
    if (in_fmt) {
        mp_image_pool_clear(p->pool);

        destroy_video_proc(vf);

        p->params = in_fmt->params;
        p->out_params = p->params;

        p->out_params.hw_subfmt = IMGFMT_NV12;
        p->out_format = DXGI_FORMAT_NV12;

        p->require_filtering = p->params.hw_subfmt != p->out_params.hw_subfmt;
    }

    if (!mp_refqueue_can_output(p->queue))
        return;

    if (!mp_refqueue_should_deint(p->queue) && !p->require_filtering) {

        struct mp_image *in = mp_image_new_ref(mp_refqueue_get(p->queue, 0));
        if (!in) {
            mp_filter_internal_mark_failed(vf);
            return;
        }
        mp_refqueue_write_out_pin(p->queue, in);
    } else {
        mp_refqueue_write_out_pin(p->queue, render(vf));
    }
}
