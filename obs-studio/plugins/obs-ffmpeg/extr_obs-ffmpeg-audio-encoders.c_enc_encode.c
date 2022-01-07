
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoder_packet {int dummy; } ;
struct encoder_frame {int * data; } ;
struct enc_encoder {size_t audio_planes; int frame_size_bytes; int * samples; } ;


 int do_encode (struct enc_encoder*,struct encoder_packet*,int*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static bool enc_encode(void *data, struct encoder_frame *frame,
         struct encoder_packet *packet, bool *received_packet)
{
 struct enc_encoder *enc = data;

 for (size_t i = 0; i < enc->audio_planes; i++)
  memcpy(enc->samples[i], frame->data[i], enc->frame_size_bytes);

 return do_encode(enc, packet, received_packet);
}
