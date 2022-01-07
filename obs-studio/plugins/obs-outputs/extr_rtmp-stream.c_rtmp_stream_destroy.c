
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_stream {struct rtmp_stream* write_buf; int write_buf_mutex; int send_thread_signaled_exit; int socket_available_event; int buffer_has_data_event; int buffer_space_available_event; int dbr_mutex; int dbr_frames; int droptest_info; int packets; int packets_mutex; int send_sem; int stop_event; int bind_ip; int encoder_name; int password; int username; int key; int path; int send_thread; int output; scalar_t__ stop_ts; int connect_thread; scalar_t__ connecting; } ;


 int RTMP_TLS_Free () ;
 scalar_t__ active (struct rtmp_stream*) ;
 int bfree (struct rtmp_stream*) ;
 int circlebuf_free (int *) ;
 scalar_t__ connecting (struct rtmp_stream*) ;
 int dstr_free (int *) ;
 int free_packets (struct rtmp_stream*) ;
 int obs_output_end_data_capture (int ) ;
 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int os_sem_destroy (int ) ;
 int os_sem_post (int ) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ stopping (struct rtmp_stream*) ;

__attribute__((used)) static void rtmp_stream_destroy(void *data)
{
 struct rtmp_stream *stream = data;

 if (stopping(stream) && !connecting(stream)) {
  pthread_join(stream->send_thread, ((void*)0));

 } else if (connecting(stream) || active(stream)) {
  if (stream->connecting)
   pthread_join(stream->connect_thread, ((void*)0));

  stream->stop_ts = 0;
  os_event_signal(stream->stop_event);

  if (active(stream)) {
   os_sem_post(stream->send_sem);
   obs_output_end_data_capture(stream->output);
   pthread_join(stream->send_thread, ((void*)0));
  }
 }

 RTMP_TLS_Free();
 free_packets(stream);
 dstr_free(&stream->path);
 dstr_free(&stream->key);
 dstr_free(&stream->username);
 dstr_free(&stream->password);
 dstr_free(&stream->encoder_name);
 dstr_free(&stream->bind_ip);
 os_event_destroy(stream->stop_event);
 os_sem_destroy(stream->send_sem);
 pthread_mutex_destroy(&stream->packets_mutex);
 circlebuf_free(&stream->packets);



 circlebuf_free(&stream->dbr_frames);
 pthread_mutex_destroy(&stream->dbr_mutex);

 os_event_destroy(stream->buffer_space_available_event);
 os_event_destroy(stream->buffer_has_data_event);
 os_event_destroy(stream->socket_available_event);
 os_event_destroy(stream->send_thread_signaled_exit);
 pthread_mutex_destroy(&stream->write_buf_mutex);

 if (stream->write_buf)
  bfree(stream->write_buf);
 bfree(stream);
}
