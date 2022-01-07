
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct video_output_info {int fps_num; int fps_den; } ;
struct sync_pair_aud {int source; int event; } ;
struct obs_source_audio {int frames; int samples_per_sec; int timestamp; int format; int speakers; int ** data; } ;


 int AUDIO_FORMAT_FLOAT ;
 scalar_t__ EAGAIN ;
 double M_PI_X2 ;
 int SPEAKERS_MONO ;
 int audio_output_get_sample_rate (int ) ;
 double cos (double) ;
 int free (float*) ;
 float* malloc (int) ;
 int obs_get_audio () ;
 int obs_get_video () ;
 int obs_get_video_frame_time () ;
 int obs_source_output_audio (int ,struct obs_source_audio*) ;
 scalar_t__ os_event_try (int ) ;
 int os_sleepto_ns (int) ;
 double rate ;
 int video_output_get_frame_time (int ) ;
 struct video_output_info* video_output_get_info (int ) ;
 scalar_t__ whitelist_time (int,int,int,int) ;

__attribute__((used)) static void *sync_pair_aud_thread(void *pdata)
{
 struct sync_pair_aud *spa = pdata;
 uint32_t sample_rate = audio_output_get_sample_rate(obs_get_audio());
 uint32_t frames = sample_rate / 100;
 uint64_t last_time = obs_get_video_frame_time();
 double cos_val = 0.0;
 float *samples = malloc(frames * sizeof(float));

 uint64_t interval = video_output_get_frame_time(obs_get_video());
 const struct video_output_info *voi =
  video_output_get_info(obs_get_video());
 uint64_t fps_num = voi->fps_num;
 uint64_t fps_den = voi->fps_den;

 while (os_event_try(spa->event) == EAGAIN) {
  if (!os_sleepto_ns(last_time += 10000000))
   last_time = obs_get_video_frame_time();

  for (uint64_t i = 0; i < frames; i++) {
   uint64_t ts =
    last_time + i * 1000000000ULL / sample_rate;

   if (whitelist_time(ts, interval, fps_num, fps_den)) {
    cos_val += rate * M_PI_X2;
    if (cos_val > M_PI_X2)
     cos_val -= M_PI_X2;

    samples[i] = (float)(cos(cos_val) * 0.5);
   } else {
    samples[i] = 0.0f;
   }
  }

  struct obs_source_audio data;
  data.data[0] = (uint8_t *)samples;
  data.frames = frames;
  data.speakers = SPEAKERS_MONO;
  data.samples_per_sec = sample_rate;
  data.timestamp = last_time;
  data.format = AUDIO_FORMAT_FLOAT;
  obs_source_output_audio(spa->source, &data);
 }

 free(samples);

 return ((void*)0);
}
