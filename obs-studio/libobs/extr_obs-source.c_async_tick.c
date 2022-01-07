
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {int * cur_async_frame; int async_update_texture; int async_mutex; int last_sys_timestamp; } ;
typedef TYPE_2__ obs_source_t ;
struct TYPE_10__ {int video_time; } ;
struct TYPE_12__ {TYPE_1__ video; } ;


 int deinterlace_process_last_frame (TYPE_2__*,int ) ;
 scalar_t__ deinterlacing_enabled (TYPE_2__*) ;
 int * get_closest_frame (TYPE_2__*,int ) ;
 TYPE_5__* obs ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int remove_async_frame (TYPE_2__*,int *) ;
 int set_async_texture_size (TYPE_2__*,int *) ;

__attribute__((used)) static void async_tick(obs_source_t *source)
{
 uint64_t sys_time = obs->video.video_time;

 pthread_mutex_lock(&source->async_mutex);

 if (deinterlacing_enabled(source)) {
  deinterlace_process_last_frame(source, sys_time);
 } else {
  if (source->cur_async_frame) {
   remove_async_frame(source, source->cur_async_frame);
   source->cur_async_frame = ((void*)0);
  }

  source->cur_async_frame = get_closest_frame(source, sys_time);
 }

 source->last_sys_timestamp = sys_time;
 pthread_mutex_unlock(&source->async_mutex);

 if (source->cur_async_frame)
  source->async_update_texture =
   set_async_texture_size(source, source->cur_async_frame);
}
