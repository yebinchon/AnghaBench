
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_filters; } ;
struct priv {int queue; TYPE_1__ pipe; } ;
struct mp_image {int dummy; } ;
struct mp_filter {struct priv* priv; } ;


 int mp_image_new_ref (struct mp_image*) ;
 int mp_refqueue_can_output (int ) ;
 int mp_refqueue_execute_reinit (int ) ;
 struct mp_image* mp_refqueue_get (int ,int ) ;
 int mp_refqueue_should_deint (int ) ;
 int mp_refqueue_write_out_pin (int ,int ) ;
 int render (struct mp_filter*) ;
 int update_pipeline (struct mp_filter*) ;

__attribute__((used)) static void vf_vavpp_process(struct mp_filter *f)
{
    struct priv *p = f->priv;

    update_pipeline(f);

    mp_refqueue_execute_reinit(p->queue);

    if (!mp_refqueue_can_output(p->queue))
        return;

    if (!p->pipe.num_filters || !mp_refqueue_should_deint(p->queue)) {

        struct mp_image *in = mp_refqueue_get(p->queue, 0);
        mp_refqueue_write_out_pin(p->queue, mp_image_new_ref(in));
    } else {
        mp_refqueue_write_out_pin(p->queue, render(f));
    }
}
