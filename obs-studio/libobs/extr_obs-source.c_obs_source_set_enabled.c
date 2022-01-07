
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
struct TYPE_7__ {int enabled; TYPE_1__ context; } ;
typedef TYPE_2__ obs_source_t ;


 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_bool (struct calldata*,char*,int) ;
 int calldata_set_ptr (struct calldata*,char*,TYPE_2__*) ;
 int obs_source_valid (TYPE_2__*,char*) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;

void obs_source_set_enabled(obs_source_t *source, bool enabled)
{
 struct calldata data;
 uint8_t stack[128];

 if (!obs_source_valid(source, "obs_source_set_enabled"))
  return;

 source->enabled = enabled;

 calldata_init_fixed(&data, stack, sizeof(stack));
 calldata_set_ptr(&data, "source", source);
 calldata_set_bool(&data, "enabled", enabled);

 signal_handler_signal(source->context.signals, "enable", &data);
}
