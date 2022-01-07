
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct audio_output_info {int speakers; int format; int samples_per_sec; } ;
struct audio_convert_info {scalar_t__ format; scalar_t__ speakers; scalar_t__ samples_per_sec; int member_2; int member_1; int member_0; } ;
struct TYPE_4__ {int pause; scalar_t__ video_start_ts; scalar_t__ audio_start_ts; int audio_size; scalar_t__ total_audio_frames; int planes; scalar_t__ sample_rate; scalar_t__ audio_conversion_set; struct audio_convert_info audio_conversion; scalar_t__ audio; } ;
typedef TYPE_1__ obs_output_t ;


 scalar_t__ AUDIO_FORMAT_UNKNOWN ;
 scalar_t__ SPEAKERS_UNKNOWN ;
 struct audio_output_info* audio_output_get_info (scalar_t__) ;
 int clear_audio_buffers (TYPE_1__*) ;
 int get_audio_planes (scalar_t__,scalar_t__) ;
 int get_audio_size (scalar_t__,scalar_t__,int) ;
 int pause_reset (int *) ;

__attribute__((used)) static void reset_raw_output(obs_output_t *output)
{
 clear_audio_buffers(output);

 if (output->audio) {
  const struct audio_output_info *aoi =
   audio_output_get_info(output->audio);
  struct audio_convert_info conv = output->audio_conversion;
  struct audio_convert_info info = {
   aoi->samples_per_sec,
   aoi->format,
   aoi->speakers,
  };

  if (output->audio_conversion_set) {
   if (conv.samples_per_sec)
    info.samples_per_sec = conv.samples_per_sec;
   if (conv.format != AUDIO_FORMAT_UNKNOWN)
    info.format = conv.format;
   if (conv.speakers != SPEAKERS_UNKNOWN)
    info.speakers = conv.speakers;
  }

  output->sample_rate = info.samples_per_sec;
  output->planes = get_audio_planes(info.format, info.speakers);
  output->total_audio_frames = 0;
  output->audio_size =
   get_audio_size(info.format, info.speakers, 1);
 }

 output->audio_start_ts = 0;
 output->video_start_ts = 0;

 pause_reset(&output->pause);
}
