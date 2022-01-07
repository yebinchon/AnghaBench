
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int raw_active; int gpu_refs; } ;
typedef TYPE_1__ video_t ;


 int os_atomic_inc_long (int *) ;
 int os_atomic_load_bool (int *) ;
 int reset_frames (TYPE_1__*) ;

void video_output_inc_texture_encoders(video_t *video)
{
 if (os_atomic_inc_long(&video->gpu_refs) == 1 &&
     !os_atomic_load_bool(&video->raw_active)) {
  reset_frames(video);
 }
}
