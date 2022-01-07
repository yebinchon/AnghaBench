
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct video_output_info {int width; int height; int format; } ;
struct video_frame {int * data; int * linesize; } ;
struct video_data {int const* const* data; int * linesize; } ;
struct obs_core_video {scalar_t__ using_nv12_tex; } ;
 int * set_gpu_converted_plane (int const,int const,int ,int ,int const* const,int ) ;

__attribute__((used)) static void set_gpu_converted_data(struct obs_core_video *video,
       struct video_frame *output,
       const struct video_data *input,
       const struct video_output_info *info)
{
 if (video->using_nv12_tex) {
  const uint32_t width = info->width;
  const uint32_t height = info->height;

  const uint8_t *const in_uv = set_gpu_converted_plane(
   width, height, input->linesize[0], output->linesize[0],
   input->data[0], output->data[0]);

  const uint32_t height_d2 = height / 2;
  set_gpu_converted_plane(width, height_d2, input->linesize[0],
     output->linesize[1], in_uv,
     output->data[1]);
 } else {
  switch (info->format) {
  case 139: {
   const uint32_t width = info->width;
   const uint32_t height = info->height;

   set_gpu_converted_plane(width, height,
      input->linesize[0],
      output->linesize[0],
      input->data[0],
      output->data[0]);

   const uint32_t width_d2 = width / 2;
   const uint32_t height_d2 = height / 2;

   set_gpu_converted_plane(width_d2, height_d2,
      input->linesize[1],
      output->linesize[1],
      input->data[1],
      output->data[1]);

   set_gpu_converted_plane(width_d2, height_d2,
      input->linesize[2],
      output->linesize[2],
      input->data[2],
      output->data[2]);

   break;
  }
  case 134: {
   const uint32_t width = info->width;
   const uint32_t height = info->height;

   set_gpu_converted_plane(width, height,
      input->linesize[0],
      output->linesize[0],
      input->data[0],
      output->data[0]);

   const uint32_t height_d2 = height / 2;
   set_gpu_converted_plane(width, height_d2,
      input->linesize[1],
      output->linesize[1],
      input->data[1],
      output->data[1]);

   break;
  }
  case 136: {
   const uint32_t width = info->width;
   const uint32_t height = info->height;

   set_gpu_converted_plane(width, height,
      input->linesize[0],
      output->linesize[0],
      input->data[0],
      output->data[0]);

   set_gpu_converted_plane(width, height,
      input->linesize[1],
      output->linesize[1],
      input->data[1],
      output->data[1]);

   set_gpu_converted_plane(width, height,
      input->linesize[2],
      output->linesize[2],
      input->data[2],
      output->data[2]);

   break;
  }

  case 135:
  case 128:
  case 129:
  case 132:
  case 133:
  case 142:
  case 141:
  case 131:
  case 143:
  case 138:
  case 140:
  case 137:
  case 130:
  case 144:

   ;
  }
 }
}
