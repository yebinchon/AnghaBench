
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct calldata {int dummy; } ;
typedef int stack ;
struct TYPE_5__ {int signals; } ;
struct TYPE_6__ {int active_delay_ns; TYPE_1__ context; } ;
typedef TYPE_2__ obs_output_t ;


 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_int (struct calldata*,char*,int) ;
 int calldata_set_ptr (struct calldata*,char*,TYPE_2__*) ;
 int signal_handler_signal (int ,char const*,struct calldata*) ;

void obs_output_signal_delay(obs_output_t *output, const char *signal)
{
 struct calldata params;
 uint8_t stack[128];

 calldata_init_fixed(&params, stack, sizeof(stack));
 calldata_set_ptr(&params, "output", output);
 calldata_set_int(&params, "sec", output->active_delay_ns / 1000000000);
 signal_handler_signal(output->context.signals, signal, &params);
}
