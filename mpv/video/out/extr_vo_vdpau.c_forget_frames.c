
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct vdpctx* priv; } ;
struct vdpctx {int dropped_frame; int current_image; } ;


 int mp_image_unrefp (int *) ;

__attribute__((used)) static void forget_frames(struct vo *vo, bool seek_reset)
{
    struct vdpctx *vc = vo->priv;

    if (!seek_reset)
        mp_image_unrefp(&vc->current_image);

    vc->dropped_frame = 0;
}
