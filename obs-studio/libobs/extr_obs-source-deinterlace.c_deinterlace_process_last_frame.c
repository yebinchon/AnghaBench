
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int * cur_async_frame; int * prev_async_frame; } ;
typedef TYPE_1__ obs_source_t ;


 int deinterlace_get_closest_frames (TYPE_1__*,int ) ;
 int remove_async_frame (TYPE_1__*,int *) ;

void deinterlace_process_last_frame(obs_source_t *s, uint64_t sys_time)
{
 if (s->prev_async_frame) {
  remove_async_frame(s, s->prev_async_frame);
  s->prev_async_frame = ((void*)0);
 }
 if (s->cur_async_frame) {
  remove_async_frame(s, s->cur_async_frame);
  s->cur_async_frame = ((void*)0);
 }

 deinterlace_get_closest_frames(s, sys_time);
}
