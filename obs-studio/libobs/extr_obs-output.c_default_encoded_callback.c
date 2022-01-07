
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int (* encoded_packet ) (int ,struct encoder_packet*) ;} ;
struct obs_output {scalar_t__ active_delay_ns; int total_frames; TYPE_2__ context; TYPE_1__ info; } ;
struct encoder_packet {scalar_t__ type; int track_idx; } ;


 scalar_t__ OBS_ENCODER_AUDIO ;
 scalar_t__ OBS_ENCODER_VIDEO ;
 scalar_t__ data_active (struct obs_output*) ;
 int get_track_index (struct obs_output*,struct encoder_packet*) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;
 int stub1 (int ,struct encoder_packet*) ;

__attribute__((used)) static void default_encoded_callback(void *param, struct encoder_packet *packet)
{
 struct obs_output *output = param;

 if (data_active(output)) {
  if (packet->type == OBS_ENCODER_AUDIO)
   packet->track_idx = get_track_index(output, packet);

  output->info.encoded_packet(output->context.data, packet);

  if (packet->type == OBS_ENCODER_VIDEO)
   output->total_frames++;
 }

 if (output->active_delay_ns)
  obs_encoder_packet_release(packet);
}
