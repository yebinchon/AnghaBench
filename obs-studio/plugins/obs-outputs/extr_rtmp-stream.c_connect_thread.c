
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct rtmp_stream {int connecting; int connect_thread; TYPE_1__ path; int output; } ;


 int OBS_OUTPUT_BAD_PATH ;
 int OBS_OUTPUT_SUCCESS ;
 int info (char*,int ,int) ;
 int init_connect (struct rtmp_stream*) ;
 int obs_output_signal_stop (int ,int) ;
 int os_atomic_set_bool (int *,int) ;
 int os_set_thread_name (char*) ;
 int pthread_detach (int ) ;
 int stopping (struct rtmp_stream*) ;
 int try_connect (struct rtmp_stream*) ;

__attribute__((used)) static void *connect_thread(void *data)
{
 struct rtmp_stream *stream = data;
 int ret;

 os_set_thread_name("rtmp-stream: connect_thread");

 if (!init_connect(stream)) {
  obs_output_signal_stop(stream->output, OBS_OUTPUT_BAD_PATH);
  return ((void*)0);
 }

 ret = try_connect(stream);

 if (ret != OBS_OUTPUT_SUCCESS) {
  obs_output_signal_stop(stream->output, ret);
  info("Connection to %s failed: %d", stream->path.array, ret);
 }

 if (!stopping(stream))
  pthread_detach(stream->connect_thread);

 os_atomic_set_bool(&stream->connecting, 0);
 return ((void*)0);
}
