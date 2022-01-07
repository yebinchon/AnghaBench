
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct ftl_stream {scalar_t__ stop_ts; int sent_headers; int active; int stop_event; int ftl_handle; int output; int send_thread; TYPE_1__ path; int encode_error; int disconnected; int send_sem; } ;
struct encoder_packet {int dts_usec; scalar_t__ keyframe; } ;
typedef scalar_t__ ftl_status_t ;


 scalar_t__ FTL_SUCCESS ;
 int OBS_OUTPUT_DISCONNECTED ;
 int OBS_OUTPUT_ENCODE_ERROR ;
 scalar_t__ can_shutdown_stream (struct ftl_stream*,struct encoder_packet*) ;
 scalar_t__ disconnected (struct ftl_stream*) ;
 int free_packets (struct ftl_stream*) ;
 scalar_t__ ftl_ingest_disconnect (int *) ;
 int get_next_packet (struct ftl_stream*,struct encoder_packet*) ;
 int info (char*,...) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;
 int obs_output_end_data_capture (int ) ;
 int obs_output_signal_stop (int ,int ) ;
 int os_atomic_load_bool (int *) ;
 int os_atomic_set_bool (int *,int) ;
 int os_event_reset (int ) ;
 scalar_t__ os_sem_wait (int ) ;
 int os_set_thread_name (char*) ;
 int printf (char*,scalar_t__) ;
 int pthread_detach (int ) ;
 int send_headers (struct ftl_stream*,int ) ;
 scalar_t__ send_packet (struct ftl_stream*,struct encoder_packet*,int) ;
 scalar_t__ stopping (struct ftl_stream*) ;

__attribute__((used)) static void *send_thread(void *data)
{
 struct ftl_stream *stream = data;
 ftl_status_t status_code;

 os_set_thread_name("ftl-stream: send_thread");

 while (os_sem_wait(stream->send_sem) == 0) {
  struct encoder_packet packet;

  if (stopping(stream) && stream->stop_ts == 0) {
   break;
  }

  if (!get_next_packet(stream, &packet))
   continue;

  if (stopping(stream)) {
   if (can_shutdown_stream(stream, &packet)) {
    obs_encoder_packet_release(&packet);
    break;
   }
  }



  if (packet.keyframe) {
   if (!send_headers(stream, packet.dts_usec)) {
    os_atomic_set_bool(&stream->disconnected, 1);
    break;
   }
  }

  if (send_packet(stream, &packet, 0) < 0) {
   os_atomic_set_bool(&stream->disconnected, 1);
   break;
  }
 }

 bool encode_error = os_atomic_load_bool(&stream->encode_error);

 if (disconnected(stream)) {
  info("Disconnected from %s", stream->path.array);
 } else if (encode_error) {
  info("Encoder error, disconnecting");
 } else {
  info("User stopped the stream");
 }

 if (!stopping(stream)) {
  pthread_detach(stream->send_thread);
  obs_output_signal_stop(stream->output, OBS_OUTPUT_DISCONNECTED);
 } else if (encode_error) {
  obs_output_signal_stop(stream->output, OBS_OUTPUT_ENCODE_ERROR);
 } else {
  obs_output_end_data_capture(stream->output);
 }

 info("ingest disconnect");

 status_code = ftl_ingest_disconnect(&stream->ftl_handle);
 if (status_code != FTL_SUCCESS) {
  printf("Failed to disconnect from ingest %d", status_code);
 }

 free_packets(stream);
 os_event_reset(stream->stop_event);
 os_atomic_set_bool(&stream->active, 0);
 stream->sent_headers = 0;
 return ((void*)0);
}
