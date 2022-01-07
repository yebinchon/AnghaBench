
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; int * array; } ;
struct obs_core_audio {TYPE_1__ render_order; } ;


 int obs_source_release (int ) ;

__attribute__((used)) static inline void release_audio_sources(struct obs_core_audio *audio)
{
 for (size_t i = 0; i < audio->render_order.num; i++)
  obs_source_release(audio->render_order.array[i]);
}
