
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int received_audio; int received_video; scalar_t__* audio_offsets; scalar_t__ video_offset; scalar_t__ highest_video_ts; scalar_t__ highest_audio_ts; } ;
typedef TYPE_1__ obs_output_t ;


 size_t MAX_AUDIO_MIXES ;
 int free_packets (TYPE_1__*) ;

__attribute__((used)) static void reset_packet_data(obs_output_t *output)
{
 output->received_audio = 0;
 output->received_video = 0;
 output->highest_audio_ts = 0;
 output->highest_video_ts = 0;
 output->video_offset = 0;

 for (size_t i = 0; i < MAX_AUDIO_MIXES; i++)
  output->audio_offsets[i] = 0;

 free_packets(output);
}
