
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alsa_data {int device; int listen_thread; int handle; } ;
typedef int pthread_attr_t ;


 int LOG_ERROR ;
 int PTHREAD_CREATE_JOINABLE ;
 scalar_t__ SND_PCM_STATE_PREPARED ;
 int SND_PCM_STREAM_CAPTURE ;
 int _alsa_close (struct alsa_data*) ;
 int _alsa_configure (struct alsa_data*) ;
 int _alsa_listen ;
 int blog (int ,char*,int ,...) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_create (int *,int *,int ,struct alsa_data*) ;
 int snd_pcm_open (int *,int ,int ,int ) ;
 int snd_pcm_start (int ) ;
 scalar_t__ snd_pcm_state (int ) ;
 int snd_strerror (int) ;

bool _alsa_open(struct alsa_data *data)
{
 pthread_attr_t attr;
 int err;

 err = snd_pcm_open(&data->handle, data->device, SND_PCM_STREAM_CAPTURE,
      0);
 if (err < 0) {
  blog(LOG_ERROR, "Failed to open '%s': %s", data->device,
       snd_strerror(err));
  return 0;
 }

 if (!_alsa_configure(data))
  goto cleanup;

 if (snd_pcm_state(data->handle) != SND_PCM_STATE_PREPARED) {
  blog(LOG_ERROR, "Device not prepared: '%s'", data->device);
  goto cleanup;
 }



 err = snd_pcm_start(data->handle);
 if (err < 0) {
  blog(LOG_ERROR, "Failed to start '%s': %s", data->device,
       snd_strerror(err));
  goto cleanup;
 }



 pthread_attr_init(&attr);
 pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

 err = pthread_create(&data->listen_thread, &attr, _alsa_listen, data);
 if (err) {
  pthread_attr_destroy(&attr);
  blog(LOG_ERROR,
       "Failed to create capture thread for device '%s'.",
       data->device);
  goto cleanup;
 }

 pthread_attr_destroy(&attr);
 return 1;

cleanup:
 _alsa_close(data);
 return 0;
}
