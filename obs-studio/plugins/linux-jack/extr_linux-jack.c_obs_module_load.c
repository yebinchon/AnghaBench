
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jack_output_capture ;
 int obs_register_source (int *) ;

bool obs_module_load(void)
{
 obs_register_source(&jack_output_capture);
 return 1;
}
