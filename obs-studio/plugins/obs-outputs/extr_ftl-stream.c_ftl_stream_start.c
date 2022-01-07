
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftl_stream {int connect_thread; int connecting; scalar_t__ frames_sent; int output; } ;
typedef int obs_encoder_t ;
typedef int obs_data_t ;


 int connect_thread ;
 int info (char*) ;
 int obs_data_release (int *) ;
 int obs_data_set_int (int *,char*,int ) ;
 int * obs_encoder_get_settings (int *) ;
 int obs_output_can_begin_data_capture (int ,int ) ;
 int * obs_output_get_video_encoder (int ) ;
 int obs_output_initialize_encoders (int ,int ) ;
 int os_atomic_set_bool (int *,int) ;
 scalar_t__ pthread_create (int *,int *,int ,struct ftl_stream*) ;

__attribute__((used)) static bool ftl_stream_start(void *data)
{
 struct ftl_stream *stream = data;

 info("ftl_stream_start");


 obs_encoder_t *video_encoder =
  obs_output_get_video_encoder(stream->output);
 obs_data_t *video_settings = obs_encoder_get_settings(video_encoder);
 obs_data_set_int(video_settings, "bf", 0);
 obs_data_release(video_settings);

 if (!obs_output_can_begin_data_capture(stream->output, 0)) {
  return 0;
 }
 if (!obs_output_initialize_encoders(stream->output, 0)) {
  return 0;
 }

 stream->frames_sent = 0;
 os_atomic_set_bool(&stream->connecting, 1);

 return pthread_create(&stream->connect_thread, ((void*)0), connect_thread,
         stream) == 0;
}
