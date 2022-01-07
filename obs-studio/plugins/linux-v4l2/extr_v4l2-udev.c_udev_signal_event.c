
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;
struct calldata {int dummy; } ;
typedef enum udev_action { ____Placeholder_udev_action } udev_action ;




 int calldata_free (struct calldata*) ;
 int calldata_init (struct calldata*) ;
 int calldata_set_string (struct calldata*,char*,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_handler_signal (int ,char*,struct calldata*) ;
 int udev_action_to_enum (int ) ;
 int udev_device_get_action (struct udev_device*) ;
 char* udev_device_get_devnode (struct udev_device*) ;
 int udev_mutex ;
 int udev_signalhandler ;

__attribute__((used)) static inline void udev_signal_event(struct udev_device *dev)
{
 const char *node;
 enum udev_action action;
 struct calldata data;

 pthread_mutex_lock(&udev_mutex);

 node = udev_device_get_devnode(dev);
 action = udev_action_to_enum(udev_device_get_action(dev));

 calldata_init(&data);

 calldata_set_string(&data, "device", node);

 switch (action) {
 case 129:
  signal_handler_signal(udev_signalhandler, "device_added",
          &data);
  break;
 case 128:
  signal_handler_signal(udev_signalhandler, "device_removed",
          &data);
  break;
 default:
  break;
 }

 calldata_free(&data);

 pthread_mutex_unlock(&udev_mutex);
}
