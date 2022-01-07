
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_4__ {void* next_audio_sys_ts_min; void* audio_ts; scalar_t__ last_audio_input_buf_size; TYPE_3__* audio_input_buf; } ;
typedef TYPE_1__ obs_source_t ;
struct TYPE_5__ {scalar_t__ size; } ;


 size_t MAX_AUDIO_CHANNELS ;
 int circlebuf_pop_front (TYPE_3__*,int *,scalar_t__) ;

__attribute__((used)) static void reset_audio_data(obs_source_t *source, uint64_t os_time)
{
 for (size_t i = 0; i < MAX_AUDIO_CHANNELS; i++) {
  if (source->audio_input_buf[i].size)
   circlebuf_pop_front(&source->audio_input_buf[i], ((void*)0),
         source->audio_input_buf[i].size);
 }

 source->last_audio_input_buf_size = 0;
 source->audio_ts = os_time;
 source->next_audio_sys_ts_min = os_time;
}
