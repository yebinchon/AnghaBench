
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct calldata {int dummy; } ;
typedef int stack ;
struct TYPE_7__ {int signals; } ;
struct TYPE_8__ {int output_flags; } ;
struct TYPE_9__ {scalar_t__ audio_mixers; TYPE_1__ context; TYPE_2__ info; } ;
typedef TYPE_3__ obs_source_t ;


 int OBS_SOURCE_AUDIO ;
 int calldata_init_fixed (struct calldata*,int *,int) ;
 scalar_t__ calldata_int (struct calldata*,char*) ;
 int calldata_set_int (struct calldata*,char*,scalar_t__) ;
 int calldata_set_ptr (struct calldata*,char*,TYPE_3__*) ;
 int obs_source_valid (TYPE_3__*,char*) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;

void obs_source_set_audio_mixers(obs_source_t *source, uint32_t mixers)
{
 struct calldata data;
 uint8_t stack[128];

 if (!obs_source_valid(source, "obs_source_set_audio_mixers"))
  return;
 if ((source->info.output_flags & OBS_SOURCE_AUDIO) == 0)
  return;

 if (source->audio_mixers == mixers)
  return;

 calldata_init_fixed(&data, stack, sizeof(stack));
 calldata_set_ptr(&data, "source", source);
 calldata_set_int(&data, "mixers", mixers);

 signal_handler_signal(source->context.signals, "audio_mixers", &data);

 mixers = (uint32_t)calldata_int(&data, "mixers");

 source->audio_mixers = mixers;
}
