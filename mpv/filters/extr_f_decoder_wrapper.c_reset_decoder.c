
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int packet_fed; int preroll_discard; TYPE_1__* decoder; void* end; void* start; int * new_segment; int packet; scalar_t__ packets_without_output; scalar_t__ has_broken_decoded_pts; scalar_t__ num_codec_dts_problems; scalar_t__ num_codec_pts_problems; void* codec_dts; void* codec_pts; void* start_pts; void* first_packet_pdts; } ;
struct TYPE_2__ {int f; } ;


 void* MP_NOPTS_VALUE ;
 int mp_filter_reset (int ) ;
 int mp_frame_unref (int *) ;
 int talloc_free (int *) ;

__attribute__((used)) static void reset_decoder(struct priv *p)
{
    p->first_packet_pdts = MP_NOPTS_VALUE;
    p->start_pts = MP_NOPTS_VALUE;
    p->codec_pts = MP_NOPTS_VALUE;
    p->codec_dts = MP_NOPTS_VALUE;
    p->num_codec_pts_problems = 0;
    p->num_codec_dts_problems = 0;
    p->has_broken_decoded_pts = 0;
    p->packets_without_output = 0;
    mp_frame_unref(&p->packet);
    p->packet_fed = 0;
    p->preroll_discard = 0;
    talloc_free(p->new_segment);
    p->new_segment = ((void*)0);
    p->start = p->end = MP_NOPTS_VALUE;

    if (p->decoder)
        mp_filter_reset(p->decoder->f);
}
