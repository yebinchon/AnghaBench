
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int signals; } ;
struct obs_output {TYPE_1__ context; } ;
struct calldata {int member_0; } ;


 int calldata_free (struct calldata*) ;
 int calldata_set_ptr (struct calldata*,char*,struct obs_output*) ;
 int signal_handler_signal (int ,char const*,struct calldata*) ;

__attribute__((used)) static inline void do_output_signal(struct obs_output *output,
        const char *signal)
{
 struct calldata params = {0};
 calldata_set_ptr(&params, "output", output);
 signal_handler_signal(output->context.signals, signal, &params);
 calldata_free(&params);
}
