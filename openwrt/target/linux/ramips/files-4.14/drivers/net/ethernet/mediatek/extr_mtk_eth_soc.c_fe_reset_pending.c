
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {struct net_device* netdev; } ;


 int dev_close (struct net_device*) ;
 int fe_open (struct net_device*) ;
 int fe_stop (struct net_device*) ;
 int ifup ;
 int netif_alert (struct fe_priv*,int ,struct net_device*,char*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void fe_reset_pending(struct fe_priv *priv)
{
 struct net_device *dev = priv->netdev;
 int err;

 rtnl_lock();
 fe_stop(dev);

 err = fe_open(dev);
 if (err) {
  netif_alert(priv, ifup, dev,
       "Driver up/down cycle failed, closing device.\n");
  dev_close(dev);
 }
 rtnl_unlock();
}
