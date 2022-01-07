
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_frame {int duration; int pts; int current; int redraw; } ;
struct vo {struct vdpctx* priv; } ;
struct vdpctx {struct mp_image* current_image; int current_duration; int current_pts; int mpvdp; } ;
struct mp_image {int dummy; } ;


 int MP_ERR (struct vo*,char*) ;
 int check_preemption (struct vo*) ;
 int draw_osd (struct vo*) ;
 struct mp_image* mp_vdpau_upload_video_surface (int ,int ) ;
 scalar_t__ status_ok (struct vo*) ;
 int talloc_free (struct mp_image*) ;
 int video_to_output_surface (struct vo*,struct mp_image*) ;

__attribute__((used)) static void draw_frame(struct vo *vo, struct vo_frame *frame)
{
    struct vdpctx *vc = vo->priv;

    check_preemption(vo);

    if (frame->current && !frame->redraw) {
        struct mp_image *vdp_mpi =
            mp_vdpau_upload_video_surface(vc->mpvdp, frame->current);
        if (!vdp_mpi)
            MP_ERR(vo, "Could not upload image.\n");

        talloc_free(vc->current_image);
        vc->current_image = vdp_mpi;
    }

    vc->current_pts = frame->pts;
    vc->current_duration = frame->duration;

    if (status_ok(vo)) {
        video_to_output_surface(vo, vc->current_image);
        draw_osd(vo);
    }
}
