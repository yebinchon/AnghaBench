
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_stream {int connect_thread; int connecting; int output; } ;


 int connect_thread ;
 int obs_output_can_begin_data_capture (int ,int ) ;
 int obs_output_initialize_encoders (int ,int ) ;
 int os_atomic_set_bool (int *,int) ;
 scalar_t__ pthread_create (int *,int *,int ,struct rtmp_stream*) ;

__attribute__((used)) static bool rtmp_stream_start(void *data)
{
 struct rtmp_stream *stream = data;

 if (!obs_output_can_begin_data_capture(stream->output, 0))
  return 0;
 if (!obs_output_initialize_encoders(stream->output, 0))
  return 0;

 os_atomic_set_bool(&stream->connecting, 1);
 return pthread_create(&stream->connect_thread, ((void*)0), connect_thread,
         stream) == 0;
}
