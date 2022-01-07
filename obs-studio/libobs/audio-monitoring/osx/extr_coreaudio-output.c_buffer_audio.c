
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct audio_monitor {int paused; int wait_size; int buffer_size; int mutex; int queue; TYPE_1__ empty_buffers; } ;
typedef int buf ;
typedef int AudioQueueRef ;
typedef int AudioQueueBufferRef ;


 int AudioQueuePause (int ) ;
 int UNUSED_PARAMETER (int ) ;
 int circlebuf_push_back (TYPE_1__*,int *,int) ;
 int fill_buffer (struct audio_monitor*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void buffer_audio(void *data, AudioQueueRef aq, AudioQueueBufferRef buf)
{
 struct audio_monitor *monitor = data;

 pthread_mutex_lock(&monitor->mutex);
 circlebuf_push_back(&monitor->empty_buffers, &buf, sizeof(buf));
 while (monitor->empty_buffers.size > 0) {
  if (!fill_buffer(monitor)) {
   break;
  }
 }
 if (monitor->empty_buffers.size == sizeof(buf) * 3) {
  monitor->paused = 1;
  monitor->wait_size = monitor->buffer_size * 3;
  AudioQueuePause(monitor->queue);
 }
 pthread_mutex_unlock(&monitor->mutex);

 UNUSED_PARAMETER(aq);
}
