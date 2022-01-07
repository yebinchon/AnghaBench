
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int num; TYPE_1__** array; } ;
struct TYPE_7__ {TYPE_2__ async_frames; scalar_t__ last_frame_ts; } ;
typedef TYPE_3__ obs_source_t ;
struct TYPE_5__ {int prev_frame; } ;



__attribute__((used)) static inline bool first_frame(obs_source_t *s)
{
 if (s->last_frame_ts)
  return 0;

 if (s->async_frames.num >= 2)
  s->async_frames.array[0]->prev_frame = 1;
 return 1;
}
