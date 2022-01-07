
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct calldata {int dummy; } ;
typedef int stack ;
struct TYPE_6__ {int signals; } ;
struct TYPE_7__ {int sync_offset; TYPE_1__ context; } ;
typedef TYPE_2__ obs_source_t ;
typedef int int64_t ;


 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_int (struct calldata*,char*) ;
 int calldata_set_int (struct calldata*,char*,int ) ;
 int calldata_set_ptr (struct calldata*,char*,TYPE_2__*) ;
 scalar_t__ obs_source_valid (TYPE_2__*,char*) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;

void obs_source_set_sync_offset(obs_source_t *source, int64_t offset)
{
 if (obs_source_valid(source, "obs_source_set_sync_offset")) {
  struct calldata data;
  uint8_t stack[128];

  calldata_init_fixed(&data, stack, sizeof(stack));
  calldata_set_ptr(&data, "source", source);
  calldata_set_int(&data, "offset", offset);

  signal_handler_signal(source->context.signals, "audio_sync",
          &data);

  source->sync_offset = calldata_int(&data, "offset");
 }
}
