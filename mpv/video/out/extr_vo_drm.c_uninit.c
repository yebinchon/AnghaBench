
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct priv {scalar_t__ fb_queue_len; unsigned int buf_count; int cur_frame_cropped; int cur_frame; int last_input; int vt_switcher; scalar_t__ vt_switcher_active; TYPE_1__* kms; int * bufs; } ;
struct TYPE_2__ {int fd; } ;


 int crtc_release (struct vo*) ;
 int fb_destroy (int ,int *) ;
 int kms_destroy (TYPE_1__*) ;
 int swapchain_step (struct vo*) ;
 int talloc_free (int ) ;
 int vt_switcher_destroy (int *) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct priv *p = vo->priv;

    crtc_release(vo);

    while (p->fb_queue_len > 0) {
        swapchain_step(vo);
    }

    if (p->kms) {
        for (unsigned int i = 0; i < p->buf_count; i++)
            fb_destroy(p->kms->fd, &p->bufs[i]);
        kms_destroy(p->kms);
        p->kms = ((void*)0);
    }

    if (p->vt_switcher_active)
        vt_switcher_destroy(&p->vt_switcher);

    talloc_free(p->last_input);
    talloc_free(p->cur_frame);
    talloc_free(p->cur_frame_cropped);
}
