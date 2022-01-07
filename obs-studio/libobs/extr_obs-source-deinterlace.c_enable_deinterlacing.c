
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ async_format; scalar_t__ async_width; scalar_t__ async_height; int deinterlace_mode; int async_mutex; int * prev_async_frame; int deinterlace_effect; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum obs_deinterlace_mode { ____Placeholder_obs_deinterlace_mode } obs_deinterlace_mode ;


 scalar_t__ VIDEO_FORMAT_NONE ;
 int get_effect (int) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int remove_async_frame (TYPE_1__*,int *) ;
 int set_deinterlace_texture_size (TYPE_1__*) ;

__attribute__((used)) static void enable_deinterlacing(obs_source_t *source,
     enum obs_deinterlace_mode mode)
{
 obs_enter_graphics();

 if (source->async_format != VIDEO_FORMAT_NONE &&
     source->async_width != 0 && source->async_height != 0)
  set_deinterlace_texture_size(source);

 source->deinterlace_mode = mode;
 source->deinterlace_effect = get_effect(mode);

 pthread_mutex_lock(&source->async_mutex);
 if (source->prev_async_frame) {
  remove_async_frame(source, source->prev_async_frame);
  source->prev_async_frame = ((void*)0);
 }
 pthread_mutex_unlock(&source->async_mutex);

 obs_leave_graphics();
}
