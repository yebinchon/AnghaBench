
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flv_output {int sent_headers; int got_first_video; int mutex; int start_dts_offset; scalar_t__ stop_ts; } ;
struct encoder_packet {scalar_t__ sys_dts_usec; scalar_t__ type; int dts; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ OBS_ENCODER_VIDEO ;
 int OBS_OUTPUT_ENCODE_ERROR ;
 int active (struct flv_output*) ;
 int flv_output_actual_stop (struct flv_output*,int ) ;
 int get_ms_time (struct encoder_packet*,int ) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;
 int obs_parse_avc_packet (struct encoder_packet*,struct encoder_packet*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ stopping (struct flv_output*) ;
 int write_headers (struct flv_output*) ;
 int write_packet (struct flv_output*,struct encoder_packet*,int) ;

__attribute__((used)) static void flv_output_data(void *data, struct encoder_packet *packet)
{
 struct flv_output *stream = data;
 struct encoder_packet parsed_packet;

 pthread_mutex_lock(&stream->mutex);

 if (!active(stream))
  goto unlock;

 if (!packet) {
  flv_output_actual_stop(stream, OBS_OUTPUT_ENCODE_ERROR);
  goto unlock;
 }

 if (stopping(stream)) {
  if (packet->sys_dts_usec >= (int64_t)stream->stop_ts) {
   flv_output_actual_stop(stream, 0);
   goto unlock;
  }
 }

 if (!stream->sent_headers) {
  write_headers(stream);
  stream->sent_headers = 1;
 }

 if (packet->type == OBS_ENCODER_VIDEO) {
  if (!stream->got_first_video) {
   stream->start_dts_offset =
    get_ms_time(packet, packet->dts);
   stream->got_first_video = 1;
  }

  obs_parse_avc_packet(&parsed_packet, packet);
  write_packet(stream, &parsed_packet, 0);
  obs_encoder_packet_release(&parsed_packet);
 } else {
  write_packet(stream, packet, 0);
 }

unlock:
 pthread_mutex_unlock(&stream->mutex);
}
