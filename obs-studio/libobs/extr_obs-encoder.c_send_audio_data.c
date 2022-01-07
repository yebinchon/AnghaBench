
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct obs_encoder {size_t planes; scalar_t__ framesize; int cur_pts; scalar_t__ framesize_bytes; int * audio_output_buffer; int * audio_input_buffer; } ;
struct encoder_frame {int pts; void* frames; void** linesize; int * data; } ;


 int circlebuf_pop_front (int *,int ,scalar_t__) ;
 int do_encode (struct obs_encoder*,struct encoder_frame*) ;
 int memset (struct encoder_frame*,int ,int) ;

__attribute__((used)) static bool send_audio_data(struct obs_encoder *encoder)
{
 struct encoder_frame enc_frame;

 memset(&enc_frame, 0, sizeof(struct encoder_frame));

 for (size_t i = 0; i < encoder->planes; i++) {
  circlebuf_pop_front(&encoder->audio_input_buffer[i],
        encoder->audio_output_buffer[i],
        encoder->framesize_bytes);

  enc_frame.data[i] = encoder->audio_output_buffer[i];
  enc_frame.linesize[i] = (uint32_t)encoder->framesize_bytes;
 }

 enc_frame.frames = (uint32_t)encoder->framesize;
 enc_frame.pts = encoder->cur_pts;

 if (!do_encode(encoder, &enc_frame))
  return 0;

 encoder->cur_pts += encoder->framesize;
 return 1;
}
