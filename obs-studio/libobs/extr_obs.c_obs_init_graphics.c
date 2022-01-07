
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct obs_video_info {int adapter; int graphics_module; } ;
struct obs_core_video {int point_sampler; int transparent_texture; void* premultiplied_alpha_effect; void* conversion_effect; void* solid_effect; void* opaque_effect; void* default_rect_effect; void* default_effect; void* bilinear_lowres_effect; void* area_effect; void* lanczos_effect; void* bicubic_effect; void* repeat_effect; int graphics; } ;
struct gs_sampler_info {int max_anisotropy; int member_0; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 scalar_t__ GS_DEVICE_OPENGL ;


 int GS_RGBA ;
 int GS_SUCCESS ;
 int OBS_VIDEO_FAIL ;
 int OBS_VIDEO_MODULE_NOT_FOUND ;
 int OBS_VIDEO_NOT_SUPPORTED ;
 int OBS_VIDEO_SUCCESS ;
 int bfree (char*) ;
 int gs_create (int *,int ,int ) ;
 void* gs_effect_create_from_file (char*,int *) ;
 int gs_enter_context (int ) ;
 scalar_t__ gs_get_device_type () ;
 int gs_leave_context () ;
 int gs_samplerstate_create (struct gs_sampler_info*) ;
 int gs_texture_create (int,int,int ,int,int const**,int ) ;
 TYPE_1__* obs ;
 char* obs_find_data_file (char*) ;

__attribute__((used)) static int obs_init_graphics(struct obs_video_info *ovi)
{
 struct obs_core_video *video = &obs->video;
 uint8_t transparent_tex_data[2 * 2 * 4] = {0};
 const uint8_t *transparent_tex = transparent_tex_data;
 struct gs_sampler_info point_sampler = {0};
 bool success = 1;
 int errorcode;

 errorcode =
  gs_create(&video->graphics, ovi->graphics_module, ovi->adapter);
 if (errorcode != GS_SUCCESS) {
  switch (errorcode) {
  case 129:
   return OBS_VIDEO_MODULE_NOT_FOUND;
  case 128:
   return OBS_VIDEO_NOT_SUPPORTED;
  default:
   return OBS_VIDEO_FAIL;
  }
 }

 gs_enter_context(video->graphics);

 char *filename = obs_find_data_file("default.effect");
 video->default_effect = gs_effect_create_from_file(filename, ((void*)0));
 bfree(filename);

 if (gs_get_device_type() == GS_DEVICE_OPENGL) {
  filename = obs_find_data_file("default_rect.effect");
  video->default_rect_effect =
   gs_effect_create_from_file(filename, ((void*)0));
  bfree(filename);
 }

 filename = obs_find_data_file("opaque.effect");
 video->opaque_effect = gs_effect_create_from_file(filename, ((void*)0));
 bfree(filename);

 filename = obs_find_data_file("solid.effect");
 video->solid_effect = gs_effect_create_from_file(filename, ((void*)0));
 bfree(filename);

 filename = obs_find_data_file("repeat.effect");
 video->repeat_effect = gs_effect_create_from_file(filename, ((void*)0));
 bfree(filename);

 filename = obs_find_data_file("format_conversion.effect");
 video->conversion_effect = gs_effect_create_from_file(filename, ((void*)0));
 bfree(filename);

 filename = obs_find_data_file("bicubic_scale.effect");
 video->bicubic_effect = gs_effect_create_from_file(filename, ((void*)0));
 bfree(filename);

 filename = obs_find_data_file("lanczos_scale.effect");
 video->lanczos_effect = gs_effect_create_from_file(filename, ((void*)0));
 bfree(filename);

 filename = obs_find_data_file("area.effect");
 video->area_effect = gs_effect_create_from_file(filename, ((void*)0));
 bfree(filename);

 filename = obs_find_data_file("bilinear_lowres_scale.effect");
 video->bilinear_lowres_effect =
  gs_effect_create_from_file(filename, ((void*)0));
 bfree(filename);

 filename = obs_find_data_file("premultiplied_alpha.effect");
 video->premultiplied_alpha_effect =
  gs_effect_create_from_file(filename, ((void*)0));
 bfree(filename);

 point_sampler.max_anisotropy = 1;
 video->point_sampler = gs_samplerstate_create(&point_sampler);

 obs->video.transparent_texture =
  gs_texture_create(2, 2, GS_RGBA, 1, &transparent_tex, 0);

 if (!video->default_effect)
  success = 0;
 if (gs_get_device_type() == GS_DEVICE_OPENGL) {
  if (!video->default_rect_effect)
   success = 0;
 }
 if (!video->opaque_effect)
  success = 0;
 if (!video->solid_effect)
  success = 0;
 if (!video->conversion_effect)
  success = 0;
 if (!video->premultiplied_alpha_effect)
  success = 0;
 if (!video->transparent_texture)
  success = 0;
 if (!video->point_sampler)
  success = 0;

 gs_leave_context();
 return success ? OBS_VIDEO_SUCCESS : OBS_VIDEO_FAIL;
}
