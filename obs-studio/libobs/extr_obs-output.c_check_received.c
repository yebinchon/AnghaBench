
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int received_video; int received_audio; } ;
struct encoder_packet {scalar_t__ type; } ;


 scalar_t__ OBS_ENCODER_VIDEO ;

__attribute__((used)) static inline void check_received(struct obs_output *output,
      struct encoder_packet *out)
{
 if (out->type == OBS_ENCODER_VIDEO) {
  if (!output->received_video)
   output->received_video = 1;
 } else {
  if (!output->received_audio)
   output->received_audio = 1;
 }
}
