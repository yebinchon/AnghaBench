
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {scalar_t__* audio_offsets; scalar_t__ video_offset; } ;
struct encoder_packet {scalar_t__ type; size_t track_idx; int dts_usec; int pts; int dts; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ OBS_ENCODER_VIDEO ;
 int packet_dts_usec (struct encoder_packet*) ;

__attribute__((used)) static inline void apply_interleaved_packet_offset(struct obs_output *output,
         struct encoder_packet *out)
{
 int64_t offset;





 offset = (out->type == OBS_ENCODER_VIDEO)
    ? output->video_offset
    : output->audio_offsets[out->track_idx];

 out->dts -= offset;
 out->pts -= offset;







 out->dts_usec = packet_dts_usec(out);
}
