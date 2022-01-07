
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int signals; } ;
struct obs_output {TYPE_1__ context; int reconnect_retry_cur_sec; } ;
struct calldata {int dummy; } ;
typedef int stack ;


 int calldata_init_fixed (struct calldata*,int *,int) ;
 int calldata_set_int (struct calldata*,char*,int ) ;
 int calldata_set_ptr (struct calldata*,char*,struct obs_output*) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;

__attribute__((used)) static inline void signal_reconnect(struct obs_output *output)
{
 struct calldata params;
 uint8_t stack[128];

 calldata_init_fixed(&params, stack, sizeof(stack));
 calldata_set_int(&params, "timeout_sec",
    output->reconnect_retry_cur_sec);
 calldata_set_ptr(&params, "output", output);
 signal_handler_signal(output->context.signals, "reconnect", &params);
}
