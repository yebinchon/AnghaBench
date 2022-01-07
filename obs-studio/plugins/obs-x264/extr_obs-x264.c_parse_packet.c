
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ b_keyframe; int i_dts; int i_pts; } ;
typedef TYPE_1__ x264_picture_t ;
struct TYPE_8__ {int i_payload; int p_payload; } ;
typedef TYPE_2__ x264_nal_t ;
struct TYPE_9__ {int num; int array; } ;
struct obs_x264 {TYPE_5__ packet_data; } ;
struct encoder_packet {int keyframe; int dts; int pts; int type; int size; int data; } ;


 int OBS_ENCODER_VIDEO ;
 int da_push_back_array (TYPE_5__,int ,int ) ;
 int da_resize (TYPE_5__,int ) ;

__attribute__((used)) static void parse_packet(struct obs_x264 *obsx264,
    struct encoder_packet *packet, x264_nal_t *nals,
    int nal_count, x264_picture_t *pic_out)
{
 if (!nal_count)
  return;

 da_resize(obsx264->packet_data, 0);

 for (int i = 0; i < nal_count; i++) {
  x264_nal_t *nal = nals + i;
  da_push_back_array(obsx264->packet_data, nal->p_payload,
       nal->i_payload);
 }

 packet->data = obsx264->packet_data.array;
 packet->size = obsx264->packet_data.num;
 packet->type = OBS_ENCODER_VIDEO;
 packet->pts = pic_out->i_pts;
 packet->dts = pic_out->i_dts;
 packet->keyframe = pic_out->b_keyframe != 0;
}
