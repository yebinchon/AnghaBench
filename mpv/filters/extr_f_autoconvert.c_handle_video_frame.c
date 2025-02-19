
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct mp_image* data; } ;
struct TYPE_7__ {struct mp_filter* filter; TYPE_1__ frame; } ;
struct priv {int force_update; scalar_t__ in_imgfmt; scalar_t__ in_subfmt; TYPE_3__ sub; int log; int public; } ;
struct TYPE_6__ {scalar_t__ hw_subfmt; scalar_t__ imgfmt; } ;
struct mp_image {scalar_t__ imgfmt; TYPE_2__ params; } ;
struct mp_filter {struct priv* priv; } ;


 scalar_t__ build_image_converter (int *,int ,struct mp_image*,struct mp_filter**) ;
 int mp_filter_internal_mark_failed (struct mp_filter*) ;
 int mp_subfilter_continue (TYPE_3__*) ;
 int mp_subfilter_drain_destroy (TYPE_3__*) ;

__attribute__((used)) static void handle_video_frame(struct mp_filter *f)
{
    struct priv *p = f->priv;

    struct mp_image *img = p->sub.frame.data;

    if (p->force_update)
        p->in_imgfmt = p->in_subfmt = 0;

    if (img->imgfmt == p->in_imgfmt && img->params.hw_subfmt == p->in_subfmt) {
        mp_subfilter_continue(&p->sub);
        return;
    }

    if (!mp_subfilter_drain_destroy(&p->sub)) {
        p->in_imgfmt = p->in_subfmt = 0;
        return;
    }

    p->in_imgfmt = img->params.imgfmt;
    p->in_subfmt = img->params.hw_subfmt;
    p->force_update = 0;

    struct mp_filter *conv = ((void*)0);
    if (build_image_converter(&p->public, p->log, img, &conv)) {
        p->sub.filter = conv;
        mp_subfilter_continue(&p->sub);
    } else {
        mp_filter_internal_mark_failed(f);
    }
}
