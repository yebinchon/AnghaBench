
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ play_dir; int fps; } ;
struct priv {TYPE_1__ public; int fixed_format; int last_format; } ;
struct mp_image {int nominal_fps; int params; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_aframe {int nominal_fps; int params; } ;


 int MP_ERR (struct priv*,char*) ;
 scalar_t__ MP_FRAME_AUDIO ;
 scalar_t__ MP_FRAME_VIDEO ;
 int correct_audio_pts (struct priv*,struct mp_image*) ;
 int correct_video_pts (struct priv*,struct mp_image*) ;
 int fix_image_params (struct priv*,int *) ;
 int mp_aframe_reverse (struct mp_image*) ;
 int mp_image_params_equal (int *,int *) ;

__attribute__((used)) static void process_output_frame(struct priv *p, struct mp_frame frame)
{
    if (frame.type == MP_FRAME_VIDEO) {
        struct mp_image *mpi = frame.data;

        correct_video_pts(p, mpi);

        if (!mp_image_params_equal(&p->last_format, &mpi->params))
            fix_image_params(p, &mpi->params);

        mpi->params = p->fixed_format;
        mpi->nominal_fps = p->public.fps;
    } else if (frame.type == MP_FRAME_AUDIO) {
        struct mp_aframe *aframe = frame.data;

        if (p->public.play_dir < 0 && !mp_aframe_reverse(aframe))
            MP_ERR(p, "Couldn't reverse audio frame.\n");

        correct_audio_pts(p, aframe);
    }
}
