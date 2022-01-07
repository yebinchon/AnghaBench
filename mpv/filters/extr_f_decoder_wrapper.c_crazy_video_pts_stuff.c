
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fps; } ;
struct priv {scalar_t__ codec_pts; scalar_t__ num_codec_pts_problems; scalar_t__ codec_dts; scalar_t__ num_codec_dts_problems; int has_broken_packet_pts; TYPE_3__ public; TYPE_2__* decoder; TYPE_1__* codec; } ;
struct mp_image {scalar_t__ pts; scalar_t__ dts; } ;
struct TYPE_5__ {int f; int (* control ) (int ,int ,int*) ;} ;
struct TYPE_4__ {scalar_t__ avi_dts; } ;


 int MPMAX (int,int ) ;
 scalar_t__ MP_NOPTS_VALUE ;
 int VDCTRL_GET_BFRAMES ;
 int stub1 (int ,int ,int*) ;

__attribute__((used)) static void crazy_video_pts_stuff(struct priv *p, struct mp_image *mpi)
{


    if (mpi->pts != MP_NOPTS_VALUE) {
        if (mpi->pts < p->codec_pts)
            p->num_codec_pts_problems++;
        p->codec_pts = mpi->pts;
    }

    if (mpi->dts != MP_NOPTS_VALUE) {
        if (mpi->dts <= p->codec_dts)
            p->num_codec_dts_problems++;
        p->codec_dts = mpi->dts;
    }

    if (p->has_broken_packet_pts < 0)
        p->has_broken_packet_pts++;
    if (p->num_codec_pts_problems)
        p->has_broken_packet_pts = 1;


    if ((p->num_codec_pts_problems > p->num_codec_dts_problems ||
        mpi->pts == MP_NOPTS_VALUE) && mpi->dts != MP_NOPTS_VALUE)
        mpi->pts = mpi->dts;


    if (p->decoder && p->decoder->control && p->codec->avi_dts &&
        mpi->pts != MP_NOPTS_VALUE && p->public.fps > 0)
    {
        int delay = -1;
        p->decoder->control(p->decoder->f, VDCTRL_GET_BFRAMES, &delay);
        mpi->pts -= MPMAX(delay, 0) / p->public.fps;
    }
}
