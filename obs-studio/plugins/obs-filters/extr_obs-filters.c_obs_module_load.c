
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_delay_filter ;
 int chroma_key_filter ;
 int color_filter ;
 int color_grade_filter ;
 int color_key_filter ;
 int compressor_filter ;
 int crop_filter ;
 int expander_filter ;
 int gain_filter ;
 int gpu_delay_filter ;
 int invert_polarity_filter ;
 int limiter_filter ;
 int luma_key_filter ;
 int mask_filter ;
 int noise_gate_filter ;
 int noise_suppress_filter ;
 int obs_register_source (int *) ;
 int scale_filter ;
 int scroll_filter ;
 int sharpness_filter ;

bool obs_module_load(void)
{
 obs_register_source(&mask_filter);
 obs_register_source(&crop_filter);
 obs_register_source(&gain_filter);
 obs_register_source(&color_filter);
 obs_register_source(&scale_filter);
 obs_register_source(&scroll_filter);
 obs_register_source(&gpu_delay_filter);
 obs_register_source(&color_key_filter);
 obs_register_source(&color_grade_filter);
 obs_register_source(&sharpness_filter);
 obs_register_source(&chroma_key_filter);
 obs_register_source(&async_delay_filter);



 obs_register_source(&invert_polarity_filter);
 obs_register_source(&noise_gate_filter);
 obs_register_source(&compressor_filter);
 obs_register_source(&limiter_filter);
 obs_register_source(&expander_filter);
 obs_register_source(&luma_key_filter);
 return 1;
}
