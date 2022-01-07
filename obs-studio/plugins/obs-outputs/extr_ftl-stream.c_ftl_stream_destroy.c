
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftl_stream {int packets; int packets_mutex; int send_sem; int stop_event; int bind_ip; int encoder_name; int password; int username; int path; int ftl_handle; int send_thread; int output; scalar_t__ stop_ts; int connect_thread; int status_thread; scalar_t__ connecting; } ;
typedef scalar_t__ ftl_status_t ;


 scalar_t__ FTL_SUCCESS ;
 scalar_t__ active (struct ftl_stream*) ;
 int bfree (struct ftl_stream*) ;
 int circlebuf_free (int *) ;
 scalar_t__ connecting (struct ftl_stream*) ;
 int dstr_free (int *) ;
 int free_packets (struct ftl_stream*) ;
 scalar_t__ ftl_ingest_destroy (int *) ;
 int info (char*,...) ;
 int obs_output_end_data_capture (int ) ;
 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int os_sem_destroy (int ) ;
 int os_sem_post (int ) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ stopping (struct ftl_stream*) ;

__attribute__((used)) static void ftl_stream_destroy(void *data)
{
 struct ftl_stream *stream = data;
 ftl_status_t status_code;

 info("ftl_stream_destroy");

 if (stopping(stream) && !connecting(stream)) {
  pthread_join(stream->send_thread, ((void*)0));

 } else if (connecting(stream) || active(stream)) {
  if (stream->connecting) {
   info("wait for connect_thread to terminate");
   pthread_join(stream->status_thread, ((void*)0));
   pthread_join(stream->connect_thread, ((void*)0));
   info("wait for connect_thread to terminate: done");
  }

  stream->stop_ts = 0;
  os_event_signal(stream->stop_event);

  if (active(stream)) {
   os_sem_post(stream->send_sem);
   obs_output_end_data_capture(stream->output);
   pthread_join(stream->send_thread, ((void*)0));
  }
 }

 info("ingest destroy");

 status_code = ftl_ingest_destroy(&stream->ftl_handle);
 if (status_code != FTL_SUCCESS) {
  info("Failed to destroy from ingest %d", status_code);
 }

 if (stream) {
  free_packets(stream);
  dstr_free(&stream->path);
  dstr_free(&stream->username);
  dstr_free(&stream->password);
  dstr_free(&stream->encoder_name);
  dstr_free(&stream->bind_ip);
  os_event_destroy(stream->stop_event);
  os_sem_destroy(stream->send_sem);
  pthread_mutex_destroy(&stream->packets_mutex);
  circlebuf_free(&stream->packets);
  bfree(stream);
 }
}
