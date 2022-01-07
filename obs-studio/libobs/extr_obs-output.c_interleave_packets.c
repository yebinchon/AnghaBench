
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int interleaved_mutex; scalar_t__ received_video; scalar_t__ received_audio; scalar_t__ active_delay_ns; } ;
struct encoder_packet {scalar_t__ type; int dts_usec; int keyframe; int track_idx; } ;


 scalar_t__ OBS_ENCODER_AUDIO ;
 scalar_t__ OBS_ENCODER_VIDEO ;
 int active (struct obs_output*) ;
 int apply_interleaved_packet_offset (struct obs_output*,struct encoder_packet*) ;
 int check_received (struct obs_output*,struct encoder_packet*) ;
 int discard_unused_audio_packets (struct obs_output*,int ) ;
 int get_track_index (struct obs_output*,struct encoder_packet*) ;
 scalar_t__ initialize_interleaved_packets (struct obs_output*) ;
 int insert_interleaved_packet (struct obs_output*,struct encoder_packet*) ;
 int obs_encoder_packet_create_instance (struct encoder_packet*,struct encoder_packet*) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;
 scalar_t__ prune_interleaved_packets (struct obs_output*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int resort_interleaved_packets (struct obs_output*) ;
 int send_interleaved (struct obs_output*) ;
 int set_higher_ts (struct obs_output*,struct encoder_packet*) ;

__attribute__((used)) static void interleave_packets(void *data, struct encoder_packet *packet)
{
 struct obs_output *output = data;
 struct encoder_packet out;
 bool was_started;

 if (!active(output))
  return;

 if (packet->type == OBS_ENCODER_AUDIO)
  packet->track_idx = get_track_index(output, packet);

 pthread_mutex_lock(&output->interleaved_mutex);


 if (!output->received_video && packet->type == OBS_ENCODER_VIDEO &&
     !packet->keyframe) {
  discard_unused_audio_packets(output, packet->dts_usec);
  pthread_mutex_unlock(&output->interleaved_mutex);

  if (output->active_delay_ns)
   obs_encoder_packet_release(packet);
  return;
 }

 was_started = output->received_audio && output->received_video;

 if (output->active_delay_ns)
  out = *packet;
 else
  obs_encoder_packet_create_instance(&out, packet);

 if (was_started)
  apply_interleaved_packet_offset(output, &out);
 else
  check_received(output, packet);

 insert_interleaved_packet(output, &out);
 set_higher_ts(output, &out);



 if (output->received_audio && output->received_video) {
  if (!was_started) {
   if (prune_interleaved_packets(output)) {
    if (initialize_interleaved_packets(output)) {
     resort_interleaved_packets(output);
     send_interleaved(output);
    }
   }
  } else {
   send_interleaved(output);
  }
 }

 pthread_mutex_unlock(&output->interleaved_mutex);
}
