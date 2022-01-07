
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_monitor {int dummy; } ;
struct udev_device {int dummy; } ;
struct udev {int dummy; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 scalar_t__ EAGAIN ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int UNUSED_PARAMETER (void*) ;
 scalar_t__ os_event_try (int ) ;
 scalar_t__ select (int,int *,int *,int *,struct timeval*) ;
 int udev_device_unref (struct udev_device*) ;
 int udev_event ;
 scalar_t__ udev_monitor_enable_receiving (struct udev_monitor*) ;
 int udev_monitor_filter_add_match_subsystem_devtype (struct udev_monitor*,char*,int *) ;
 int udev_monitor_get_fd (struct udev_monitor*) ;
 struct udev_monitor* udev_monitor_new_from_netlink (struct udev*,char*) ;
 struct udev_device* udev_monitor_receive_device (struct udev_monitor*) ;
 int udev_monitor_unref (struct udev_monitor*) ;
 struct udev* udev_new () ;
 int udev_signal_event (struct udev_device*) ;
 int udev_unref (struct udev*) ;

__attribute__((used)) static void *udev_event_thread(void *vptr)
{
 UNUSED_PARAMETER(vptr);

 int fd;
 fd_set fds;
 struct timeval tv;
 struct udev *udev;
 struct udev_monitor *mon;
 struct udev_device *dev;


 udev = udev_new();
 mon = udev_monitor_new_from_netlink(udev, "udev");
 udev_monitor_filter_add_match_subsystem_devtype(mon, "video4linux",
       ((void*)0));
 if (udev_monitor_enable_receiving(mon) < 0)
  return ((void*)0);


 fd = udev_monitor_get_fd(mon);

 while (os_event_try(udev_event) == EAGAIN) {
  FD_ZERO(&fds);
  FD_SET(fd, &fds);
  tv.tv_sec = 1;
  tv.tv_usec = 0;

  if (select(fd + 1, &fds, ((void*)0), ((void*)0), &tv) <= 0)
   continue;

  dev = udev_monitor_receive_device(mon);
  if (!dev)
   continue;

  udev_signal_event(dev);

  udev_device_unref(dev);
 }

 udev_monitor_unref(mon);
 udev_unref(udev);

 return ((void*)0);
}
