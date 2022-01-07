
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ start_pts; double end; double start; int header; scalar_t__ new_segment; } ;
struct mp_image {double pts; int dts; int a53_cc; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_aframe {double pts; int dts; int a53_cc; } ;
struct demux_packet {double pts; int dts; } ;


 int MP_ERR (struct priv*,char*) ;
 scalar_t__ MP_FRAME_AUDIO ;
 scalar_t__ MP_FRAME_EOF ;
 scalar_t__ MP_FRAME_VIDEO ;
 double MP_NOPTS_VALUE ;
 int av_buffer_unref (int *) ;
 int crazy_video_pts_stuff (struct priv*,struct mp_image*) ;
 int demuxer_feed_caption (int ,struct demux_packet*) ;
 int mp_aframe_clip_timestamps (struct mp_image*,scalar_t__,scalar_t__) ;
 double mp_aframe_get_pts (struct mp_image*) ;
 scalar_t__ mp_aframe_get_size (struct mp_image*) ;
 int mp_frame_unref (struct mp_frame*) ;
 struct demux_packet* new_demux_packet_from_buf (int ) ;

__attribute__((used)) static bool process_decoded_frame(struct priv *p, struct mp_frame *frame)
{
    if (frame->type == MP_FRAME_EOF) {

        if (p->new_segment)
            mp_frame_unref(frame);
        return 1;
    }

    bool segment_ended = 0;

    if (frame->type == MP_FRAME_VIDEO) {
        struct mp_image *mpi = frame->data;

        crazy_video_pts_stuff(p, mpi);

        struct demux_packet *ccpkt = new_demux_packet_from_buf(mpi->a53_cc);
        if (ccpkt) {
            av_buffer_unref(&mpi->a53_cc);
            ccpkt->pts = mpi->pts;
            ccpkt->dts = mpi->dts;
            demuxer_feed_caption(p->header, ccpkt);
        }


        if (mpi->pts == MP_NOPTS_VALUE || mpi->pts >= p->start_pts)
            p->start_pts = MP_NOPTS_VALUE;

        if (mpi->pts != MP_NOPTS_VALUE) {
            segment_ended = p->end != MP_NOPTS_VALUE && mpi->pts >= p->end;
            if ((p->start != MP_NOPTS_VALUE && mpi->pts < p->start) ||
                segment_ended)
            {
                mp_frame_unref(frame);
                goto done;
            }
        }
    } else if (frame->type == MP_FRAME_AUDIO) {
        struct mp_aframe *aframe = frame->data;

        mp_aframe_clip_timestamps(aframe, p->start, p->end);
        double pts = mp_aframe_get_pts(aframe);
        if (pts != MP_NOPTS_VALUE && p->start != MP_NOPTS_VALUE)
            segment_ended = pts >= p->end;

        if (mp_aframe_get_size(aframe) == 0) {
            mp_frame_unref(frame);
            goto done;
        }
    } else {
        MP_ERR(p, "unknown frame type from decoder\n");
    }

done:
    return segment_ended;
}
