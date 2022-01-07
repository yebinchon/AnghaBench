
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct obs_source_frame {scalar_t__ timestamp; } ;
struct TYPE_7__ {int num; struct obs_source_frame** array; } ;
struct TYPE_6__ {scalar_t__ last_sys_timestamp; scalar_t__ last_frame_ts; TYPE_5__ async_frames; scalar_t__ async_unbuffered; } ;
typedef TYPE_1__ obs_source_t ;


 int LOG_DEBUG ;
 scalar_t__ MAX_TS_VAR ;
 int blog (int ,char*,...) ;
 int da_erase (TYPE_5__,int ) ;
 scalar_t__ frame_out_of_bounds (TYPE_1__*,scalar_t__) ;
 int remove_async_frame (TYPE_1__*,struct obs_source_frame*) ;

__attribute__((used)) static bool ready_async_frame(obs_source_t *source, uint64_t sys_time)
{
 struct obs_source_frame *next_frame = source->async_frames.array[0];
 struct obs_source_frame *frame = ((void*)0);
 uint64_t sys_offset = sys_time - source->last_sys_timestamp;
 uint64_t frame_time = next_frame->timestamp;
 uint64_t frame_offset = 0;

 if (source->async_unbuffered) {
  while (source->async_frames.num > 1) {
   da_erase(source->async_frames, 0);
   remove_async_frame(source, next_frame);
   next_frame = source->async_frames.array[0];
  }

  source->last_frame_ts = next_frame->timestamp;
  return 1;
 }
 if (frame_out_of_bounds(source, frame_time)) {



  source->last_frame_ts = next_frame->timestamp;
  return 1;
 } else {
  frame_offset = frame_time - source->last_frame_ts;
  source->last_frame_ts += sys_offset;
 }

 while (source->last_frame_ts > next_frame->timestamp) {





  if ((source->last_frame_ts - next_frame->timestamp) < 2000000)
   break;

  if (frame)
   da_erase(source->async_frames, 0);
  remove_async_frame(source, frame);

  if (source->async_frames.num == 1)
   return 1;

  frame = next_frame;
  next_frame = source->async_frames.array[1];


  if ((next_frame->timestamp - frame_time) > MAX_TS_VAR) {



   source->last_frame_ts =
    next_frame->timestamp - frame_offset;
  }

  frame_time = next_frame->timestamp;
  frame_offset = frame_time - source->last_frame_ts;
 }






 return frame != ((void*)0);
}
