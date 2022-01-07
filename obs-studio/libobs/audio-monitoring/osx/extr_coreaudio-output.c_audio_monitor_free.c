
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_monitor {int mutex; int new_data; int empty_buffers; int resampler; scalar_t__ queue; scalar_t__* buffers; scalar_t__ active; scalar_t__ source; } ;


 int AudioQueueDispose (scalar_t__,int) ;
 int AudioQueueFreeBuffer (scalar_t__,scalar_t__) ;
 int AudioQueueStop (scalar_t__,int) ;
 int audio_resampler_destroy (int ) ;
 int circlebuf_free (int *) ;
 int obs_source_remove_audio_capture_callback (scalar_t__,int ,struct audio_monitor*) ;
 int on_audio_playback ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void audio_monitor_free(struct audio_monitor *monitor)
{
 if (monitor->source) {
  obs_source_remove_audio_capture_callback(
   monitor->source, on_audio_playback, monitor);
 }
 if (monitor->active) {
  AudioQueueStop(monitor->queue, 1);
 }
 for (size_t i = 0; i < 3; i++) {
  if (monitor->buffers[i]) {
   AudioQueueFreeBuffer(monitor->queue,
          monitor->buffers[i]);
  }
 }
 if (monitor->queue) {
  AudioQueueDispose(monitor->queue, 1);
 }

 audio_resampler_destroy(monitor->resampler);
 circlebuf_free(&monitor->empty_buffers);
 circlebuf_free(&monitor->new_data);
 pthread_mutex_destroy(&monitor->mutex);
}
