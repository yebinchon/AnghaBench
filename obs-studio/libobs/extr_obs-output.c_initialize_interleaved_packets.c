
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; struct encoder_packet* array; } ;
struct TYPE_3__ {int name; } ;
struct obs_output {int received_audio; TYPE_2__ interleaved_packets; int highest_video_ts; int highest_audio_ts; TYPE_1__ context; int * audio_offsets; int video_offset; } ;
struct encoder_packet {scalar_t__ dts_usec; int dts; int pts; } ;
typedef long long int64_t ;


 int LOG_DEBUG ;
 int MAX_AUDIO_MIXES ;
 int OBS_ENCODER_AUDIO ;
 int apply_interleaved_packet_offset (struct obs_output*,struct encoder_packet*) ;
 int blog (int ,char*,int ,long long,long long,long long) ;
 int discard_to_idx (struct obs_output*,size_t) ;
 struct encoder_packet* find_last_packet_type (struct obs_output*,int ,size_t) ;
 int get_audio_and_video_packets (struct obs_output*,struct encoder_packet**,struct encoder_packet**,size_t) ;
 size_t get_interleaved_start_idx (struct obs_output*) ;
 size_t num_audio_mixes (struct obs_output*) ;

__attribute__((used)) static bool initialize_interleaved_packets(struct obs_output *output)
{
 struct encoder_packet *video;
 struct encoder_packet *audio[MAX_AUDIO_MIXES];
 struct encoder_packet *last_audio[MAX_AUDIO_MIXES];
 size_t audio_mixes = num_audio_mixes(output);
 size_t start_idx;

 if (!get_audio_and_video_packets(output, &video, audio, audio_mixes))
  return 0;

 for (size_t i = 0; i < audio_mixes; i++)
  last_audio[i] =
   find_last_packet_type(output, OBS_ENCODER_AUDIO, i);


 for (size_t i = 0; i < audio_mixes; i++) {
  if (last_audio[i]->dts_usec < video->dts_usec) {
   output->received_audio = 0;
   return 0;
  }
 }


 start_idx = get_interleaved_start_idx(output);
 if (start_idx) {
  discard_to_idx(output, start_idx);
  if (!get_audio_and_video_packets(output, &video, audio,
       audio_mixes))
   return 0;
 }


 output->video_offset = video->pts;
 for (size_t i = 0; i < audio_mixes; i++)
  output->audio_offsets[i] = audio[i]->dts;
 output->highest_audio_ts -= audio[0]->dts_usec;
 output->highest_video_ts -= video->dts_usec;


 for (size_t i = 0; i < output->interleaved_packets.num; i++) {
  struct encoder_packet *packet =
   &output->interleaved_packets.array[i];
  apply_interleaved_packet_offset(output, packet);
 }

 return 1;
}
