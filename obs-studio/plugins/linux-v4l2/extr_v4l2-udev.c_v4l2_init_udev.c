
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OS_EVENT_TYPE_MANUAL ;
 scalar_t__ os_event_init (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_handler_add_array (int ,int ) ;
 int signal_handler_create () ;
 int udev_event ;
 int udev_event_thread ;
 int udev_mutex ;
 scalar_t__ udev_refs ;
 int udev_signalhandler ;
 int udev_signals ;
 int udev_thread ;

void v4l2_init_udev(void)
{
 pthread_mutex_lock(&udev_mutex);


 if (udev_refs == 0) {
  if (os_event_init(&udev_event, OS_EVENT_TYPE_MANUAL) != 0)
   goto fail;
  if (pthread_create(&udev_thread, ((void*)0), udev_event_thread,
       ((void*)0)) != 0)
   goto fail;

  udev_signalhandler = signal_handler_create();
  if (!udev_signalhandler)
   goto fail;
  signal_handler_add_array(udev_signalhandler, udev_signals);
 }
 udev_refs++;

fail:
 pthread_mutex_unlock(&udev_mutex);
}
