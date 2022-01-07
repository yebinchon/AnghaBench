
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct ftl_stream {int connecting; int connect_thread; TYPE_1__ path; int output; } ;


 int LOG_WARNING ;
 int OBS_OUTPUT_SUCCESS ;
 int blog (int ,char*) ;
 int info (char*,int ,int) ;
 int init_connect (struct ftl_stream*) ;
 int obs_output_signal_stop (int ,int) ;
 int os_atomic_set_bool (int *,int) ;
 int os_set_thread_name (char*) ;
 int pthread_detach (int ) ;
 int stopping (struct ftl_stream*) ;
 int try_connect (struct ftl_stream*) ;

__attribute__((used)) static void *connect_thread(void *data)
{
 struct ftl_stream *stream = data;
 int ret;

 os_set_thread_name("ftl-stream: connect_thread");

 blog(LOG_WARNING, "ftl-stream: connect thread");

 ret = init_connect(stream);
 if (ret != OBS_OUTPUT_SUCCESS) {
  obs_output_signal_stop(stream->output, ret);
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
