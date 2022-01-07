
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct obs_source_frame {int timestamp; } ;
struct TYPE_6__ {struct obs_source_frame** array; int num; } ;
struct TYPE_5__ {int last_frame_ts; TYPE_4__ async_frames; } ;
typedef TYPE_1__ obs_source_t ;


 int da_erase (TYPE_4__,int ) ;
 scalar_t__ ready_async_frame (TYPE_1__*,int ) ;

__attribute__((used)) static inline struct obs_source_frame *get_closest_frame(obs_source_t *source,
        uint64_t sys_time)
{
 if (!source->async_frames.num)
  return ((void*)0);

 if (!source->last_frame_ts || ready_async_frame(source, sys_time)) {
  struct obs_source_frame *frame = source->async_frames.array[0];
  da_erase(source->async_frames, 0);

  if (!source->last_frame_ts)
   source->last_frame_ts = frame->timestamp;

  return frame;
 }

 return ((void*)0);
}
