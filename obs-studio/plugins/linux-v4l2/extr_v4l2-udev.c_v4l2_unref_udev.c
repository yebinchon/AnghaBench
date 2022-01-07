
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_handler_destroy (int *) ;
 int udev_event ;
 int udev_mutex ;
 scalar_t__ udev_refs ;
 int * udev_signalhandler ;
 int udev_thread ;

void v4l2_unref_udev(void)
{
 pthread_mutex_lock(&udev_mutex);


 if (udev_refs && --udev_refs == 0) {
  os_event_signal(udev_event);
  pthread_join(udev_thread, ((void*)0));
  os_event_destroy(udev_event);

  if (udev_signalhandler)
   signal_handler_destroy(udev_signalhandler);
  udev_signalhandler = ((void*)0);
 }

 pthread_mutex_unlock(&udev_mutex);
}
