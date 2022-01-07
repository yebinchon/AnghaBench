
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdev_info {int nvqs; TYPE_1__* fds; } ;
struct TYPE_2__ {int revents; int fd; } ;


 int POLLIN ;
 int poll (TYPE_1__*,int,int) ;
 int read (int ,unsigned long long*,int) ;

__attribute__((used)) static void wait_for_interrupt(struct vdev_info *dev)
{
 int i;
 unsigned long long val;
 poll(dev->fds, dev->nvqs, -1);
 for (i = 0; i < dev->nvqs; ++i)
  if (dev->fds[i].revents & POLLIN) {
   read(dev->fds[i].fd, &val, sizeof val);
  }
}
