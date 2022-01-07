
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct pause_data {scalar_t__ ts_start; } ;
struct audio_data {scalar_t__ frames; scalar_t__ timestamp; } ;


 scalar_t__ ns_to_audio_frames (size_t,scalar_t__) ;

__attribute__((used)) static void pause_audio(struct pause_data *pause, struct audio_data *data,
   size_t sample_rate)
{
 uint64_t cutoff_frames = pause->ts_start - data->timestamp;
 cutoff_frames = ns_to_audio_frames(sample_rate, cutoff_frames);

 data->frames = (uint32_t)cutoff_frames;
}
