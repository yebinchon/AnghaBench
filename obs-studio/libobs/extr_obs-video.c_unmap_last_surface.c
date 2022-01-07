
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_core_video {int ** mapped_surfaces; } ;


 int NUM_CHANNELS ;
 int gs_stagesurface_unmap (int *) ;

__attribute__((used)) static inline void unmap_last_surface(struct obs_core_video *video)
{
 for (int c = 0; c < NUM_CHANNELS; ++c) {
  if (video->mapped_surfaces[c]) {
   gs_stagesurface_unmap(video->mapped_surfaces[c]);
   video->mapped_surfaces[c] = ((void*)0);
  }
 }
}
