
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_scale_info {scalar_t__ format; scalar_t__ width; scalar_t__ height; int colorspace; int range; } ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ height; scalar_t__ format; int colorspace; int range; } ;
struct video_output {TYPE_1__ info; } ;
struct TYPE_4__ {scalar_t__ width; scalar_t__ height; scalar_t__ format; } ;
struct video_input {TYPE_2__ conversion; int * frame; int scaler; } ;


 int LOG_ERROR ;
 size_t MAX_CONVERT_BUFFERS ;
 int VIDEO_SCALER_BAD_CONVERSION ;
 int VIDEO_SCALER_SUCCESS ;
 int VIDEO_SCALE_FAST_BILINEAR ;
 int blog (int ,char*) ;
 int video_frame_init (int *,scalar_t__,scalar_t__,scalar_t__) ;
 int video_scaler_create (int *,TYPE_2__*,struct video_scale_info*,int ) ;

__attribute__((used)) static inline bool video_input_init(struct video_input *input,
        struct video_output *video)
{
 if (input->conversion.width != video->info.width ||
     input->conversion.height != video->info.height ||
     input->conversion.format != video->info.format) {
  struct video_scale_info from = {.format = video->info.format,
      .width = video->info.width,
      .height = video->info.height,
      .range = video->info.range,
      .colorspace =
       video->info.colorspace};

  int ret = video_scaler_create(&input->scaler,
           &input->conversion, &from,
           VIDEO_SCALE_FAST_BILINEAR);
  if (ret != VIDEO_SCALER_SUCCESS) {
   if (ret == VIDEO_SCALER_BAD_CONVERSION)
    blog(LOG_ERROR, "video_input_init: Bad "
      "scale conversion type");
   else
    blog(LOG_ERROR, "video_input_init: Failed to "
      "create scaler");

   return 0;
  }

  for (size_t i = 0; i < MAX_CONVERT_BUFFERS; i++)
   video_frame_init(&input->frame[i],
      input->conversion.format,
      input->conversion.width,
      input->conversion.height);
 }

 return 1;
}
