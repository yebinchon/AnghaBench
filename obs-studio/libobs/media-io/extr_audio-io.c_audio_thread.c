
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {size_t samples_per_sec; int name; } ;
struct audio_output {int stop_event; TYPE_1__ info; } ;


 scalar_t__ AUDIO_OUTPUT_FRAMES ;
 scalar_t__ EAGAIN ;
 scalar_t__ audio_frames_to_ns (size_t,scalar_t__) ;
 int input_and_output (struct audio_output*,scalar_t__,scalar_t__) ;
 int obs_get_profiler_name_store () ;
 scalar_t__ os_event_try (int ) ;
 scalar_t__ os_gettime_ns () ;
 int os_set_thread_name (char*) ;
 int os_sleep_ms (int ) ;
 int profile_end (char const*) ;
 int profile_reenable_thread () ;
 int profile_start (char const*) ;
 char* profile_store_name (int ,char*,int ) ;

__attribute__((used)) static void *audio_thread(void *param)
{
 struct audio_output *audio = param;
 size_t rate = audio->info.samples_per_sec;
 uint64_t samples = 0;
 uint64_t start_time = os_gettime_ns();
 uint64_t prev_time = start_time;
 uint64_t audio_time = prev_time;
 uint32_t audio_wait_time = (uint32_t)(
  audio_frames_to_ns(rate, AUDIO_OUTPUT_FRAMES) / 1000000);

 os_set_thread_name("audio-io: audio thread");

 const char *audio_thread_name =
  profile_store_name(obs_get_profiler_name_store(),
       "audio_thread(%s)", audio->info.name);

 while (os_event_try(audio->stop_event) == EAGAIN) {
  uint64_t cur_time;

  os_sleep_ms(audio_wait_time);

  profile_start(audio_thread_name);

  cur_time = os_gettime_ns();
  while (audio_time <= cur_time) {
   samples += AUDIO_OUTPUT_FRAMES;
   audio_time =
    start_time + audio_frames_to_ns(rate, samples);

   input_and_output(audio, audio_time, prev_time);
   prev_time = audio_time;
  }

  profile_end(audio_thread_name);

  profile_reenable_thread();
 }

 return ((void*)0);
}
