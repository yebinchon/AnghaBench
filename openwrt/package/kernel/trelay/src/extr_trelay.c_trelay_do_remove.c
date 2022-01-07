
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trelay {int dev2; int dev1; int debugfs; int list; } ;


 int KERN_INFO ;
 int debugfs_remove_recursive (int ) ;
 int dev_put (int ) ;
 int kfree (struct trelay*) ;
 int list_del (int *) ;
 int netdev_rx_handler_unregister (int ) ;
 int trelay_log (int ,struct trelay*,char*) ;

__attribute__((used)) static int trelay_do_remove(struct trelay *tr)
{
 list_del(&tr->list);



 debugfs_remove_recursive(tr->debugfs);

 dev_put(tr->dev1);
 dev_put(tr->dev2);

 netdev_rx_handler_unregister(tr->dev1);
 netdev_rx_handler_unregister(tr->dev2);

 trelay_log(KERN_INFO, tr, "stopped");

 kfree(tr);

 return 0;
}
