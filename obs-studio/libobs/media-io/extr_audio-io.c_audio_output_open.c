
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_output_info {int format; int input_param; int input_callback; int speakers; } ;
struct audio_output {int channels; int planes; int block_size; int initialized; int thread; int stop_event; int input_mutex; int input_param; int input_cb; int info; } ;
typedef int pthread_mutexattr_t ;
typedef struct audio_output audio_t ;


 int AUDIO_OUTPUT_FAIL ;
 int AUDIO_OUTPUT_INVALIDPARAM ;
 int AUDIO_OUTPUT_SUCCESS ;
 int OS_EVENT_TYPE_MANUAL ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int audio_output_close (struct audio_output*) ;
 int audio_thread ;
 struct audio_output* bzalloc (int) ;
 int get_audio_bytes_per_channel (int ) ;
 int get_audio_channels (int ) ;
 int is_audio_planar (int ) ;
 int memcpy (int *,struct audio_output_info*,int) ;
 scalar_t__ os_event_init (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,struct audio_output*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;
 int valid_audio_params (struct audio_output_info*) ;

int audio_output_open(audio_t **audio, struct audio_output_info *info)
{
 struct audio_output *out;
 pthread_mutexattr_t attr;
 bool planar = is_audio_planar(info->format);

 if (!valid_audio_params(info))
  return AUDIO_OUTPUT_INVALIDPARAM;

 out = bzalloc(sizeof(struct audio_output));
 if (!out)
  goto fail;

 memcpy(&out->info, info, sizeof(struct audio_output_info));
 out->channels = get_audio_channels(info->speakers);
 out->planes = planar ? out->channels : 1;
 out->input_cb = info->input_callback;
 out->input_param = info->input_param;
 out->block_size = (planar ? 1 : out->channels) *
     get_audio_bytes_per_channel(info->format);

 if (pthread_mutexattr_init(&attr) != 0)
  goto fail;
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  goto fail;
 if (pthread_mutex_init(&out->input_mutex, &attr) != 0)
  goto fail;
 if (os_event_init(&out->stop_event, OS_EVENT_TYPE_MANUAL) != 0)
  goto fail;
 if (pthread_create(&out->thread, ((void*)0), audio_thread, out) != 0)
  goto fail;

 out->initialized = 1;
 *audio = out;
 return AUDIO_OUTPUT_SUCCESS;

fail:
 audio_output_close(out);
 return AUDIO_OUTPUT_FAIL;
}
