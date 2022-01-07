
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {int * linesize; int * data; } ;
struct obs_core_video {int ** mapped_surfaces; int *** copy_surfaces; int * textures_copied; } ;
typedef int gs_stagesurf_t ;


 int NUM_CHANNELS ;
 int gs_stagesurface_map (int *,int *,int *) ;

__attribute__((used)) static inline bool download_frame(struct obs_core_video *video,
      int prev_texture, struct video_data *frame)
{
 if (!video->textures_copied[prev_texture])
  return 0;

 for (int channel = 0; channel < NUM_CHANNELS; ++channel) {
  gs_stagesurf_t *surface =
   video->copy_surfaces[prev_texture][channel];
  if (surface) {
   if (!gs_stagesurface_map(surface, &frame->data[channel],
       &frame->linesize[channel]))
    return 0;

   video->mapped_surfaces[channel] = surface;
  }
 }
 return 1;
}
