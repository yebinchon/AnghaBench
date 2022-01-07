
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double play_dir; int pts_reset; } ;
struct priv {double pts; TYPE_2__* header; TYPE_1__ public; } ;
struct mp_aframe {int dummy; } ;
struct TYPE_4__ {scalar_t__ missing_timestamps; } ;


 double MP_NOPTS_VALUE ;
 int MP_STATS (struct priv*,char*,double) ;
 int MP_WARN (struct priv*,char*,double,double) ;
 double fabs (double) ;
 double mp_aframe_duration (struct mp_aframe*) ;
 double mp_aframe_get_pts (struct mp_aframe*) ;
 int mp_aframe_set_pts (struct mp_aframe*,double) ;

__attribute__((used)) static void correct_audio_pts(struct priv *p, struct mp_aframe *aframe)
{
    double dir = p->public.play_dir;

    double frame_pts = mp_aframe_get_pts(aframe);
    double frame_len = mp_aframe_duration(aframe);

    if (frame_pts != MP_NOPTS_VALUE) {
        if (dir < 0)
            frame_pts = -(frame_pts + frame_len);

        if (p->pts != MP_NOPTS_VALUE)
            MP_STATS(p, "value %f audio-pts-err", p->pts - frame_pts);

        double diff = fabs(p->pts - frame_pts);




        if (p->pts != MP_NOPTS_VALUE && diff > 0.1) {
            MP_WARN(p, "Invalid audio PTS: %f -> %f\n", p->pts, frame_pts);
            if (diff >= 5)
                p->public.pts_reset = 1;
        }



        if (p->pts == MP_NOPTS_VALUE || diff > 0.001)
            p->pts = frame_pts;
    }

    if (p->pts == MP_NOPTS_VALUE && p->header->missing_timestamps)
        p->pts = 0;

    mp_aframe_set_pts(aframe, p->pts);

    if (p->pts != MP_NOPTS_VALUE)
        p->pts += frame_len;
}
