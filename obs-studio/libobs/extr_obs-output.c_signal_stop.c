
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int signals; } ;
struct obs_output {TYPE_1__ context; int stop_code; int last_error_message; } ;
struct calldata {int dummy; } ;


 int calldata_free (struct calldata*) ;
 int calldata_init (struct calldata*) ;
 int calldata_set_int (struct calldata*,char*,int ) ;
 int calldata_set_ptr (struct calldata*,char*,struct obs_output*) ;
 int calldata_set_string (struct calldata*,char*,int ) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;

__attribute__((used)) static inline void signal_stop(struct obs_output *output)
{
 struct calldata params;

 calldata_init(&params);
 calldata_set_string(&params, "last_error", output->last_error_message);
 calldata_set_int(&params, "code", output->stop_code);
 calldata_set_ptr(&params, "output", output);

 signal_handler_signal(output->context.signals, "stop", &params);

 calldata_free(&params);
}
