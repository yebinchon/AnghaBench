
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {scalar_t__ highest_video_ts; scalar_t__ highest_audio_ts; } ;
struct encoder_packet {scalar_t__ type; scalar_t__ dts_usec; } ;


 scalar_t__ OBS_ENCODER_VIDEO ;

__attribute__((used)) static inline void set_higher_ts(struct obs_output *output,
     struct encoder_packet *packet)
{
 if (packet->type == OBS_ENCODER_VIDEO) {
  if (output->highest_video_ts < packet->dts_usec)
   output->highest_video_ts = packet->dts_usec;
 } else {
  if (output->highest_audio_ts < packet->dts_usec)
   output->highest_audio_ts = packet->dts_usec;
 }
}
