
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int end_data_capture_thread_active; int stopping_event; int active; scalar_t__ active_delay_ns; int service; int video; int video_encoder; } ;
typedef TYPE_1__ obs_output_t ;
typedef int encoded_callback_t ;


 int convert_flags (TYPE_1__*,int ,int*,int*,int*,int*) ;
 int default_encoded_callback ;
 int default_raw_video_callback ;
 int do_output_signal (TYPE_1__*,char*) ;
 int interleave_packets ;
 int obs_encoder_stop (int ,int ,TYPE_1__*) ;
 int obs_output_cleanup_delay (TYPE_1__*) ;
 int obs_service_deactivate (int ,int) ;
 int os_atomic_set_bool (int *,int) ;
 int os_event_signal (int ) ;
 int process_delay ;
 int stop_audio_encoders (TYPE_1__*,int ) ;
 int stop_raw_audio (TYPE_1__*) ;
 int stop_raw_video (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void *end_data_capture_thread(void *data)
{
 bool encoded, has_video, has_audio, has_service;
 encoded_callback_t encoded_callback;
 obs_output_t *output = data;

 convert_flags(output, 0, &encoded, &has_video, &has_audio,
        &has_service);

 if (encoded) {
  if (output->active_delay_ns)
   encoded_callback = process_delay;
  else
   encoded_callback = (has_video && has_audio)
         ? interleave_packets
         : default_encoded_callback;

  if (has_video)
   obs_encoder_stop(output->video_encoder,
      encoded_callback, output);
  if (has_audio)
   stop_audio_encoders(output, encoded_callback);
 } else {
  if (has_video)
   stop_raw_video(output->video,
           default_raw_video_callback, output);
  if (has_audio)
   stop_raw_audio(output);
 }

 if (has_service)
  obs_service_deactivate(output->service, 0);

 if (output->active_delay_ns)
  obs_output_cleanup_delay(output);

 do_output_signal(output, "deactivate");
 os_atomic_set_bool(&output->active, 0);
 os_event_signal(output->stopping_event);
 os_atomic_set_bool(&output->end_data_capture_thread_active, 0);

 return ((void*)0);
}
