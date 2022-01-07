
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int coreaudio_input_capture_info ;
 int coreaudio_output_capture_info ;
 int display_capture_info ;
 int obs_register_source (int *) ;
 int window_capture_info ;

bool obs_module_load(void)
{
 obs_register_source(&coreaudio_input_capture_info);
 obs_register_source(&coreaudio_output_capture_info);
 obs_register_source(&display_capture_info);
 obs_register_source(&window_capture_info);
 return 1;
}
