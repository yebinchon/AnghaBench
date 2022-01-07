
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int signals; } ;
struct obs_output {TYPE_1__ context; } ;
typedef int obs_data_t ;


 int OBS_OBJ_TYPE_OUTPUT ;
 int obs_context_data_init (TYPE_1__*,int ,int *,char const*,int *,int) ;
 int output_signals ;
 int signal_handler_add_array (int ,int ) ;

__attribute__((used)) static bool init_output_handlers(struct obs_output *output, const char *name,
     obs_data_t *settings, obs_data_t *hotkey_data)
{
 if (!obs_context_data_init(&output->context, OBS_OBJ_TYPE_OUTPUT,
       settings, name, hotkey_data, 0))
  return 0;

 signal_handler_add_array(output->context.signals, output_signals);
 return 1;
}
