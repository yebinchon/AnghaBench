
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x264_picture_t ;
typedef int x264_nal_t ;
struct obs_x264 {int context; } ;
struct encoder_packet {int dummy; } ;
struct encoder_frame {int dummy; } ;


 int init_pic_data (struct obs_x264*,int *,struct encoder_frame*) ;
 int parse_packet (struct obs_x264*,struct encoder_packet*,int *,int,int *) ;
 int warn (char*) ;
 int x264_encoder_encode (int ,int **,int*,int *,int *) ;

__attribute__((used)) static bool obs_x264_encode(void *data, struct encoder_frame *frame,
       struct encoder_packet *packet,
       bool *received_packet)
{
 struct obs_x264 *obsx264 = data;
 x264_nal_t *nals;
 int nal_count;
 int ret;
 x264_picture_t pic, pic_out;

 if (!frame || !packet || !received_packet)
  return 0;

 if (frame)
  init_pic_data(obsx264, &pic, frame);

 ret = x264_encoder_encode(obsx264->context, &nals, &nal_count,
      (frame ? &pic : ((void*)0)), &pic_out);
 if (ret < 0) {
  warn("encode failed");
  return 0;
 }

 *received_packet = (nal_count != 0);
 parse_packet(obsx264, packet, nals, nal_count, &pic_out);

 return 1;
}
