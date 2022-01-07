
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_data {int dev; int buffers; scalar_t__ thread; int event; } ;


 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (scalar_t__,int *) ;
 int v4l2_close (int) ;
 int v4l2_destroy_mmap (int *) ;

__attribute__((used)) static void v4l2_terminate(struct v4l2_data *data)
{
 if (data->thread) {
  os_event_signal(data->event);
  pthread_join(data->thread, ((void*)0));
  os_event_destroy(data->event);
  data->thread = 0;
 }

 v4l2_destroy_mmap(&data->buffers);

 if (data->dev != -1) {
  v4l2_close(data->dev);
  data->dev = -1;
 }
}
