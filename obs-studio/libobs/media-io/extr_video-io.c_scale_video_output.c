
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct video_input {scalar_t__ cur_frame; scalar_t__ scaler; struct video_frame* frame; } ;
struct video_frame {int * linesize; int * data; } ;
struct video_data {int * linesize; int * data; } ;


 int LOG_WARNING ;
 size_t MAX_AV_PLANES ;
 scalar_t__ MAX_CONVERT_BUFFERS ;
 int blog (int ,char*) ;
 int video_scaler_scale (scalar_t__,int *,int *,int const* const*,int *) ;

__attribute__((used)) static inline bool scale_video_output(struct video_input *input,
          struct video_data *data)
{
 bool success = 1;

 if (input->scaler) {
  struct video_frame *frame;

  if (++input->cur_frame == MAX_CONVERT_BUFFERS)
   input->cur_frame = 0;

  frame = &input->frame[input->cur_frame];

  success = video_scaler_scale(input->scaler, frame->data,
          frame->linesize,
          (const uint8_t *const *)data->data,
          data->linesize);

  if (success) {
   for (size_t i = 0; i < MAX_AV_PLANES; i++) {
    data->data[i] = frame->data[i];
    data->linesize[i] = frame->linesize[i];
   }
  } else {
   blog(LOG_WARNING, "video-io: Could not scale frame!");
  }
 }

 return success;
}
