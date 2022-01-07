
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_6__ {size_t last_audio_input_buf_size; int pending_stop; scalar_t__ audio_ts; TYPE_4__* audio_input_buf; TYPE_1__ context; } ;
typedef TYPE_2__ obs_source_t ;
struct TYPE_7__ {size_t size; } ;


 int LOG_DEBUG ;
 int blog (int ,char*,...) ;
 int circlebuf_pop_front (TYPE_4__*,int *,size_t) ;

__attribute__((used)) static bool discard_if_stopped(obs_source_t *source, size_t channels)
{
 size_t last_size;
 size_t size;

 last_size = source->last_audio_input_buf_size;
 size = source->audio_input_buf[0].size;

 if (!size)
  return 0;



 if (last_size == size) {
  if (!source->pending_stop) {
   source->pending_stop = 1;




   return 1;
  }

  for (size_t ch = 0; ch < channels; ch++)
   circlebuf_pop_front(&source->audio_input_buf[ch], ((void*)0),
         source->audio_input_buf[ch].size);

  source->pending_stop = 0;
  source->audio_ts = 0;
  source->last_audio_input_buf_size = 0;




  return 1;
 } else {
  source->last_audio_input_buf_size = size;
  return 0;
 }
}
