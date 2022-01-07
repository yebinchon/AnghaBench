
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int obs_register_source (int *) ;
 int pulse_input_capture ;
 int pulse_output_capture ;

bool obs_module_load(void)
{
 obs_register_source(&pulse_input_capture);
 obs_register_source(&pulse_output_capture);
 return 1;
}
