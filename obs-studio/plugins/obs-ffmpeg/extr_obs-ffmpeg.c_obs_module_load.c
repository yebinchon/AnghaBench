
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int aac_encoder_info ;
 int blog (int ,char*) ;
 int ffmpeg_muxer ;
 int ffmpeg_output ;
 int ffmpeg_source ;
 int get_win_ver_int () ;
 int jim_nvenc_load () ;
 int nvenc_encoder_info ;
 scalar_t__ nvenc_supported () ;
 int obs_ffmpeg_load_logging () ;
 int obs_register_encoder (int *) ;
 int obs_register_output (int *) ;
 int obs_register_source (int *) ;
 int opus_encoder_info ;
 int replay_buffer ;
 int vaapi_encoder_info ;
 scalar_t__ vaapi_supported () ;

bool obs_module_load(void)
{
 obs_register_source(&ffmpeg_source);
 obs_register_output(&ffmpeg_output);
 obs_register_output(&ffmpeg_muxer);
 obs_register_output(&replay_buffer);
 obs_register_encoder(&aac_encoder_info);
 obs_register_encoder(&opus_encoder_info);

 if (nvenc_supported()) {
  blog(LOG_INFO, "NVENC supported");





  obs_register_encoder(&nvenc_encoder_info);
 }
 return 1;
}
