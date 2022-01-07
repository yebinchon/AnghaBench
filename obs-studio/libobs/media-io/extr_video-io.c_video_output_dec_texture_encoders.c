
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int raw_active; int gpu_refs; } ;
typedef TYPE_1__ video_t ;


 int log_skipped (TYPE_1__*) ;
 scalar_t__ os_atomic_dec_long (int *) ;
 int os_atomic_load_bool (int *) ;

void video_output_dec_texture_encoders(video_t *video)
{
 if (os_atomic_dec_long(&video->gpu_refs) == 0 &&
     !os_atomic_load_bool(&video->raw_active)) {
  log_skipped(video);
 }
}
