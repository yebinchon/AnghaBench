
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct calldata {int dummy; } ;
typedef int stack ;
struct TYPE_5__ {int signals; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_2__ obs_source_t ;


 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_bool (struct calldata*,char*,int ) ;
 int calldata_set_ptr (struct calldata*,char*,TYPE_2__*) ;
 int signal_handler_signal (int ,char const*,struct calldata*) ;

__attribute__((used)) static void source_signal_push_to_delay(obs_source_t *source,
     const char *signal, uint64_t delay)
{
 struct calldata data;
 uint8_t stack[128];

 calldata_init_fixed(&data, stack, sizeof(stack));
 calldata_set_ptr(&data, "source", source);
 calldata_set_bool(&data, "delay", delay);

 signal_handler_signal(source->context.signals, signal, &data);
}
