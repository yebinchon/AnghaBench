
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int signals; int private; } ;
struct obs_source {TYPE_1__ context; } ;
struct calldata {int dummy; } ;
typedef int stack ;
struct TYPE_4__ {int signals; } ;


 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_ptr (struct calldata*,char*,struct obs_source*) ;
 TYPE_2__* obs ;
 int signal_handler_signal (int ,char const*,struct calldata*) ;

__attribute__((used)) static inline void obs_source_dosignal(struct obs_source *source,
           const char *signal_obs,
           const char *signal_source)
{
 struct calldata data;
 uint8_t stack[128];

 calldata_init_fixed(&data, stack, sizeof(stack));
 calldata_set_ptr(&data, "source", source);
 if (signal_obs && !source->context.private)
  signal_handler_signal(obs->signals, signal_obs, &data);
 if (signal_source)
  signal_handler_signal(source->context.signals, signal_source,
          &data);
}
