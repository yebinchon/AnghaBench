
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_video {int texture_rendered; int texture_converted; scalar_t__ cur_texture; scalar_t__ gpu_encoder_active; int gpu_encoders; int gpu_encoder_mutex; int textures_copied; int vframe_info_buffer_gpu; int vframe_info_buffer; int * output_texture; int * render_texture; int *** copy_surfaces; int ** convert_textures; int ** mapped_surfaces; int graphics; int * video; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 size_t NUM_CHANNELS ;
 size_t NUM_TEXTURES ;
 int circlebuf_free (int *) ;
 int da_free (int ) ;
 int gs_enter_context (int ) ;
 int gs_leave_context () ;
 int gs_stagesurface_destroy (int *) ;
 int gs_stagesurface_unmap (int *) ;
 int gs_texture_destroy (int *) ;
 int memset (int ,int ,int) ;
 TYPE_1__* obs ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init_value (int *) ;
 int video_output_close (int *) ;

__attribute__((used)) static void obs_free_video(void)
{
 struct obs_core_video *video = &obs->video;

 if (video->video) {
  video_output_close(video->video);
  video->video = ((void*)0);

  if (!video->graphics)
   return;

  gs_enter_context(video->graphics);

  for (size_t c = 0; c < NUM_CHANNELS; c++) {
   if (video->mapped_surfaces[c]) {
    gs_stagesurface_unmap(
     video->mapped_surfaces[c]);
    video->mapped_surfaces[c] = ((void*)0);
   }
  }

  for (size_t i = 0; i < NUM_TEXTURES; i++) {
   for (size_t c = 0; c < NUM_CHANNELS; c++) {
    if (video->copy_surfaces[i][c]) {
     gs_stagesurface_destroy(
      video->copy_surfaces[i][c]);
     video->copy_surfaces[i][c] = ((void*)0);
    }
   }
  }

  gs_texture_destroy(video->render_texture);

  for (size_t c = 0; c < NUM_CHANNELS; c++) {
   if (video->convert_textures[c]) {
    gs_texture_destroy(video->convert_textures[c]);
    video->convert_textures[c] = ((void*)0);
   }
  }

  for (size_t i = 0; i < NUM_TEXTURES; i++) {
   for (size_t c = 0; c < NUM_CHANNELS; c++) {
    if (video->copy_surfaces[i][c]) {
     gs_stagesurface_destroy(
      video->copy_surfaces[i][c]);
     video->copy_surfaces[i][c] = ((void*)0);
    }
   }
  }

  gs_texture_destroy(video->output_texture);
  video->render_texture = ((void*)0);
  video->output_texture = ((void*)0);

  gs_leave_context();

  circlebuf_free(&video->vframe_info_buffer);
  circlebuf_free(&video->vframe_info_buffer_gpu);

  video->texture_rendered = 0;
  ;
  memset(video->textures_copied, 0,
         sizeof(video->textures_copied));
  video->texture_converted = 0;
  ;

  pthread_mutex_destroy(&video->gpu_encoder_mutex);
  pthread_mutex_init_value(&video->gpu_encoder_mutex);
  da_free(video->gpu_encoders);

  video->gpu_encoder_active = 0;
  video->cur_texture = 0;
 }
}
