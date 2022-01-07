
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct rtmp_stream {int output; int send_sem; scalar_t__ stop_ts; int stop_event; scalar_t__ max_shutdown_time_sec; scalar_t__ shutdown_timeout_ts; int connect_thread; } ;


 int OBS_OUTPUT_SUCCESS ;
 scalar_t__ active (struct rtmp_stream*) ;
 scalar_t__ connecting (struct rtmp_stream*) ;
 int obs_output_signal_stop (int ,int ) ;
 int os_event_signal (int ) ;
 int os_sem_post (int ) ;
 int pthread_join (int ,int *) ;
 scalar_t__ stopping (struct rtmp_stream*) ;

__attribute__((used)) static void rtmp_stream_stop(void *data, uint64_t ts)
{
 struct rtmp_stream *stream = data;

 if (stopping(stream) && ts != 0)
  return;

 if (connecting(stream))
  pthread_join(stream->connect_thread, ((void*)0));

 stream->stop_ts = ts / 1000ULL;

 if (ts)
  stream->shutdown_timeout_ts =
   ts +
   (uint64_t)stream->max_shutdown_time_sec * 1000000000ULL;

 if (active(stream)) {
  os_event_signal(stream->stop_event);
  if (stream->stop_ts == 0)
   os_sem_post(stream->send_sem);
 } else {
  obs_output_signal_stop(stream->output, OBS_OUTPUT_SUCCESS);
 }
}
