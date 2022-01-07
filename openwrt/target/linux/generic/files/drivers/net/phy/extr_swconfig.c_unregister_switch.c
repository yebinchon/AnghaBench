
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int sw_mutex; int dev_list; int portbuf; } ;


 int kfree (int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int swconfig_destroy_led_trigger (struct switch_dev*) ;
 int swconfig_lock () ;
 int swconfig_unlock () ;

void
unregister_switch(struct switch_dev *dev)
{
 swconfig_destroy_led_trigger(dev);
 kfree(dev->portbuf);
 mutex_lock(&dev->sw_mutex);
 swconfig_lock();
 list_del(&dev->dev_list);
 swconfig_unlock();
 mutex_unlock(&dev->sw_mutex);
}
