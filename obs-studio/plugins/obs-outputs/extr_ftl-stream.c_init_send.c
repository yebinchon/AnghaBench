
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftl_stream {int output; int active; int send_thread; } ;


 int OBS_OUTPUT_ERROR ;
 int OBS_OUTPUT_SUCCESS ;
 int obs_output_begin_data_capture (int ,int ) ;
 int os_atomic_set_bool (int *,int) ;
 int pthread_create (int *,int *,int ,struct ftl_stream*) ;
 int reset_semaphore (struct ftl_stream*) ;
 int send_thread ;
 int warn (char*) ;

__attribute__((used)) static int init_send(struct ftl_stream *stream)
{
 int ret;

 reset_semaphore(stream);

 ret = pthread_create(&stream->send_thread, ((void*)0), send_thread, stream);
 if (ret != 0) {
  warn("Failed to create send thread");
  return OBS_OUTPUT_ERROR;
 }

 os_atomic_set_bool(&stream->active, 1);

 obs_output_begin_data_capture(stream->output, 0);

 return OBS_OUTPUT_SUCCESS;
}
