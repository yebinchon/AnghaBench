
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int m_bCustomSend; } ;
struct TYPE_3__ {int array; } ;
struct rtmp_stream {scalar_t__ stop_ts; int sent_headers; int socket_thread_active; scalar_t__ dbr_cur_bitrate; scalar_t__ dbr_orig_bitrate; scalar_t__ dbr_enabled; int active; int stop_event; int output; int send_thread; TYPE_2__ rtmp; int socket_thread; int buffer_has_data_event; int send_thread_signaled_exit; scalar_t__ new_socket_loop; TYPE_1__ path; int encode_error; int dbr_mutex; int disconnected; int send_sem; } ;
struct encoder_packet {int track_idx; int size; } ;
struct dbr_frame {void* send_end; int size; void* send_beg; } ;


 int OBS_OUTPUT_DISCONNECTED ;
 int OBS_OUTPUT_ENCODE_ERROR ;
 int RTMP_Close (TYPE_2__*) ;
 scalar_t__ can_shutdown_stream (struct rtmp_stream*,struct encoder_packet*) ;
 int dbr_add_frame (struct rtmp_stream*,struct dbr_frame*) ;
 int dbr_set_bitrate (struct rtmp_stream*) ;
 scalar_t__ disconnected (struct rtmp_stream*) ;
 int free_packets (struct rtmp_stream*) ;
 int get_next_packet (struct rtmp_stream*,struct encoder_packet*) ;
 int info (char*,...) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;
 int obs_output_end_data_capture (int ) ;
 int obs_output_signal_stop (int ,int ) ;
 int os_atomic_load_bool (int *) ;
 int os_atomic_set_bool (int *,int) ;
 int os_event_reset (int ) ;
 int os_event_signal (int ) ;
 void* os_gettime_ns () ;
 scalar_t__ os_sem_wait (int ) ;
 int os_set_thread_name (char*) ;
 int pthread_detach (int ) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int send_headers (struct rtmp_stream*) ;
 scalar_t__ send_packet (struct rtmp_stream*,struct encoder_packet*,int,int ) ;
 int set_output_error (struct rtmp_stream*) ;
 scalar_t__ stopping (struct rtmp_stream*) ;

__attribute__((used)) static void *send_thread(void *data)
{
 struct rtmp_stream *stream = data;

 os_set_thread_name("rtmp-stream: send_thread");

 while (os_sem_wait(stream->send_sem) == 0) {
  struct encoder_packet packet;
  struct dbr_frame dbr_frame;

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

  if (!stream->sent_headers) {
   if (!send_headers(stream)) {
    os_atomic_set_bool(&stream->disconnected, 1);
    break;
   }
  }

  if (stream->dbr_enabled) {
   dbr_frame.send_beg = os_gettime_ns();
   dbr_frame.size = packet.size;
  }

  if (send_packet(stream, &packet, 0, packet.track_idx) < 0) {
   os_atomic_set_bool(&stream->disconnected, 1);
   break;
  }

  if (stream->dbr_enabled) {
   dbr_frame.send_end = os_gettime_ns();

   pthread_mutex_lock(&stream->dbr_mutex);
   dbr_add_frame(stream, &dbr_frame);
   pthread_mutex_unlock(&stream->dbr_mutex);
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

 if (stream->new_socket_loop) {
  os_event_signal(stream->send_thread_signaled_exit);
  os_event_signal(stream->buffer_has_data_event);
  pthread_join(stream->socket_thread, ((void*)0));
  stream->socket_thread_active = 0;
  stream->rtmp.m_bCustomSend = 0;
 }

 set_output_error(stream);
 RTMP_Close(&stream->rtmp);

 if (!stopping(stream)) {
  pthread_detach(stream->send_thread);
  obs_output_signal_stop(stream->output, OBS_OUTPUT_DISCONNECTED);
 } else if (encode_error) {
  obs_output_signal_stop(stream->output, OBS_OUTPUT_ENCODE_ERROR);
 } else {
  obs_output_end_data_capture(stream->output);
 }

 free_packets(stream);
 os_event_reset(stream->stop_event);
 os_atomic_set_bool(&stream->active, 0);
 stream->sent_headers = 0;


 if (stream->dbr_enabled) {
  if (stream->dbr_cur_bitrate != stream->dbr_orig_bitrate) {
   stream->dbr_cur_bitrate = stream->dbr_orig_bitrate;
   dbr_set_bitrate(stream);
  }
 }

 return ((void*)0);
}
