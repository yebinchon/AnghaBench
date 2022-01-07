
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_output_info {int format; } ;
struct obs_video_info {scalar_t__ output_format; int output_width; int output_height; } ;
struct obs_core_video {int using_nv12_tex; int gpu_conversion; void** convert_textures; int video; int conversion_needed; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 int GS_R8 ;
 int GS_R8G8 ;
 int GS_RENDER_TARGET ;
 int GS_SHARED_KM_TEX ;
 int LOG_INFO ;



 int blog (int ,char*,...) ;
 int calc_gpu_conversion_sizes (struct obs_video_info*) ;
 int gs_nv12_available () ;
 void* gs_texture_create (int,int,int ,int,int *,int) ;
 int gs_texture_create_nv12 (void**,void**,int,int,int) ;
 TYPE_1__* obs ;
 struct video_output_info* video_output_get_info (int ) ;

__attribute__((used)) static bool obs_init_gpu_conversion(struct obs_video_info *ovi)
{
 struct obs_core_video *video = &obs->video;

 calc_gpu_conversion_sizes(ovi);

 video->using_nv12_tex = ovi->output_format == 128
     ? gs_nv12_available()
     : 0;

 if (!video->conversion_needed) {
  blog(LOG_INFO, "GPU conversion not available for format: %u",
       (unsigned int)ovi->output_format);
  video->gpu_conversion = 0;
  video->using_nv12_tex = 0;
  blog(LOG_INFO, "NV12 texture support not available");
  return 1;
 }

 if (video->using_nv12_tex)
  blog(LOG_INFO, "NV12 texture support enabled");
 else
  blog(LOG_INFO, "NV12 texture support not available");
  video->convert_textures[0] =
   gs_texture_create(ovi->output_width, ovi->output_height,
       GS_R8, 1, ((void*)0), GS_RENDER_TARGET);

  const struct video_output_info *info =
   video_output_get_info(video->video);
  switch (info->format) {
  case 130:
   video->convert_textures[1] = gs_texture_create(
    ovi->output_width / 2, ovi->output_height / 2,
    GS_R8, 1, ((void*)0), GS_RENDER_TARGET);
   video->convert_textures[2] = gs_texture_create(
    ovi->output_width / 2, ovi->output_height / 2,
    GS_R8, 1, ((void*)0), GS_RENDER_TARGET);
   if (!video->convert_textures[2])
    return 0;
   break;
  case 128:
   video->convert_textures[1] = gs_texture_create(
    ovi->output_width / 2, ovi->output_height / 2,
    GS_R8G8, 1, ((void*)0), GS_RENDER_TARGET);
   break;
  case 129:
   video->convert_textures[1] = gs_texture_create(
    ovi->output_width, ovi->output_height, GS_R8, 1,
    ((void*)0), GS_RENDER_TARGET);
   video->convert_textures[2] = gs_texture_create(
    ovi->output_width, ovi->output_height, GS_R8, 1,
    ((void*)0), GS_RENDER_TARGET);
   if (!video->convert_textures[2])
    return 0;
   break;
  default:
   break;
  }




 if (!video->convert_textures[0])
  return 0;
 if (!video->convert_textures[1])
  return 0;

 return 1;
}
