
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {long long save_ts; int output; int active; } ;
typedef int obs_hotkey_t ;
typedef int obs_hotkey_id ;
typedef int obs_encoder_t ;


 int UNUSED_PARAMETER (int) ;
 int info (char*) ;
 scalar_t__ obs_encoder_paused (int *) ;
 int * obs_output_get_video_encoder (int ) ;
 scalar_t__ os_atomic_load_bool (int *) ;
 long long os_gettime_ns () ;

__attribute__((used)) static void replay_buffer_hotkey(void *data, obs_hotkey_id id,
     obs_hotkey_t *hotkey, bool pressed)
{
 UNUSED_PARAMETER(id);
 UNUSED_PARAMETER(hotkey);
 UNUSED_PARAMETER(pressed);

 if (!pressed)
  return;

 struct ffmpeg_muxer *stream = data;

 if (os_atomic_load_bool(&stream->active)) {
  obs_encoder_t *vencoder =
   obs_output_get_video_encoder(stream->output);
  if (obs_encoder_paused(vencoder)) {
   info("Could not save buffer because encoders paused");
   return;
  }

  stream->save_ts = os_gettime_ns() / 1000LL;
 }
}
