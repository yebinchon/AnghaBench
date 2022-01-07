
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_audio {float user_volume; int audio; void* monitoring_device_id; void* monitoring_device_name; int monitoring_mutex; } ;
struct audio_output_info {int dummy; } ;
typedef int pthread_mutexattr_t ;
struct TYPE_2__ {struct obs_core_audio audio; } ;


 int AUDIO_OUTPUT_INVALIDPARAM ;
 int AUDIO_OUTPUT_SUCCESS ;
 int LOG_ERROR ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int audio_output_open (int *,struct audio_output_info*) ;
 int blog (int ,char*) ;
 void* bstrdup (char*) ;
 TYPE_1__* obs ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutex_init_value (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

__attribute__((used)) static bool obs_init_audio(struct audio_output_info *ai)
{
 struct obs_core_audio *audio = &obs->audio;
 int errorcode;

 pthread_mutexattr_t attr;

 pthread_mutex_init_value(&audio->monitoring_mutex);

 if (pthread_mutexattr_init(&attr) != 0)
  return 0;
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  return 0;
 if (pthread_mutex_init(&audio->monitoring_mutex, &attr) != 0)
  return 0;

 audio->user_volume = 1.0f;

 audio->monitoring_device_name = bstrdup("Default");
 audio->monitoring_device_id = bstrdup("default");

 errorcode = audio_output_open(&audio->audio, ai);
 if (errorcode == AUDIO_OUTPUT_SUCCESS)
  return 1;
 else if (errorcode == AUDIO_OUTPUT_INVALIDPARAM)
  blog(LOG_ERROR, "Invalid audio parameters specified");
 else
  blog(LOG_ERROR, "Could not open audio output");

 return 0;
}
