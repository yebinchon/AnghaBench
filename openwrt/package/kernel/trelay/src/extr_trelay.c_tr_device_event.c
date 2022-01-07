
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trelay {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned long NETDEV_UNREGISTER ;
 int NOTIFY_DONE ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int trelay_do_remove (struct trelay*) ;
 struct trelay* trelay_find (struct net_device*) ;

__attribute__((used)) static int tr_device_event(struct notifier_block *unused, unsigned long event,
      void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct trelay *tr;

 if (event != NETDEV_UNREGISTER)
  goto out;

 tr = trelay_find(dev);
 if (!tr)
  goto out;

 trelay_do_remove(tr);

out:
 return NOTIFY_DONE;
}
